import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar Productos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          controller: _searchController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: '¿Qué estas buscando?',
            hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          onTap: () {
            _showBottomSheet(context);
          },
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          /*initialChildSize: 0.95, // Altura inicial como 50% de la pantalla
          minChildSize: 0.95,     // Altura mínima (30% de la pantalla)
          maxChildSize: 0.95, */    // Altura máxima (90% de la pantalla)
          builder: (context, scrollController) {
            return Container(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Buscar Productos',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Ingresa tu búsqueda...',
                        ),
                        onChanged: (value) {
                          // Manejar la búsqueda
                        },
                      ),
                      SizedBox(height: 16),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true, // Hace que se ajuste al contenido
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('Producto ${index + 1}'),
                              onTap: () {
                                // Manejar selección
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
          },
        );
      },
    );
  }
}
