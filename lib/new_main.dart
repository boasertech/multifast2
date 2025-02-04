import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:multifast/src/generated/chat.pb.dart';
import 'package:multifast/src/services/chat_client.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});

  @override
  ChatAppState createState() => ChatAppState();
}

class ChatAppState extends State<ChatApp> {
  // Canal gRPC que conecta con el servidor
  final channel = ClientChannel(
    '192.168.1.140', // Dirección del servidor
    port: 50051, // Puerto en el servidor gRPC
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  late ChatClient client;  // Cliente para interactuar con el servidor gRPC
  late StreamSubscription<MessageReply> messageSubscription;  // Suscripción para recibir mensajes en tiempo real
  final List<MessageReply> messages = [];  // Lista de mensajes recibidos
  final TextEditingController controller = TextEditingController();  // Controlador del campo de texto

  @override
  void initState() {
    super.initState();
    // Iniciamos el cliente gRPC
    client = ChatClient(channel);

    // Escuchamos los mensajes en tiempo real del servidor
    messageSubscription = client.streamMessages().listen((message) {
      setState(() {
        messages.add(message);  // Agregamos el mensaje a la lista
      });
    });
  }

  @override
  void dispose() {
    // Cancelamos la suscripción y cerramos el canal cuando ya no se necesita
    messageSubscription.cancel();
    channel.shutdown();
    super.dispose();
  }

  // Método para enviar un mensaje
  void sendMessage() async {
    if (controller.text.isNotEmpty) {
      // Enviamos el mensaje al servidor
      await client.sendMessage('FlutterUser', controller.text);
      controller.clear();  // Limpiamos el campo de texto
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Chat gRPC')),
        body: Column(
          children: [
            // Lista de mensajes recibidos
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return ListTile(
                    title: Text('${message.user}: ${message.message}'),
                    subtitle: Text(message.timestamp),
                  );
                },
              ),
            ),
            // Campo para ingresar y enviar un mensaje
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(hintText: 'Enter message'),
                      onSubmitted: (value) {
                        sendMessage();
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      sendMessage();  // Enviamos el mensaje al presionar el botón
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
