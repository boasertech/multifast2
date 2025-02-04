import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:multifast/src/generated/chat.pbgrpc.dart';

class ChatClient {
  final ChatServiceClient _client;

  ChatClient(ClientChannel channel) : _client = ChatServiceClient(channel);

  Future<MessageReply> sendMessage(String user, String message) async {
    final request = MessageRequest(user: user, message: message);
    return await _client.sendMessage(request);
  }

  Stream<MessageReply> streamMessages() {
    final request = Empty();
    return _client.streamMessages(request);
  }
}
