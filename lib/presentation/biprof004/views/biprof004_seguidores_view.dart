import 'package:flutter/material.dart';

class Biprof004SeguidoresView extends StatefulWidget {
  @override
  _Biprof004SeguidoresViewState createState() => _Biprof004SeguidoresViewState();
}

class _Biprof004SeguidoresViewState extends State<Biprof004SeguidoresView> {
  final List<Map<String, String>> seguidores = [
    {"nombre": "Juan Pérez", "clave": "ABCDE12345"},
    {"nombre": "María Gómez", "clave": "FGHIJ67890"},
    {"nombre": "Carlos Ramírez", "clave": "KLMNO54321"},
    {"nombre": "Laura Martínez", "clave": "PQRST98765"},
    {"nombre": "Ricardo López", "clave": "UVWXY23456"},
    {"nombre": "Ana Rodríguez", "clave": "ZABCD65432"},
    {"nombre": "Pedro Sánchez", "clave": "EFGHI76543"},
    {"nombre": "Luisa", "clave": "JKLMN87654"},
    {"nombre": "Javier Cruz Gutierrez", "clave": "OPQRS54321"},
    {"nombre": "Elena Torres", "clave": "TUVWX23456"},
  ];

  List<Map<String, String>> seguidoresFiltrados = [];

  @override
  void initState() {
    super.initState();
    seguidoresFiltrados = List.from(seguidores);
  }

  void filtrarSeguidores(String filtro) {
    setState(() {
      seguidoresFiltrados = seguidores.where((seguidor) {
        return seguidor['nombre']!.toLowerCase().contains(filtro.toLowerCase()) ||
            seguidor['clave']!.toLowerCase().contains(filtro.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Registrados al evento'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(radius: 30, child: Icon(Icons.person)),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  TextField(
                    onChanged: (filtro) => filtrarSeguidores(filtro),
                    decoration: InputDecoration(
                      labelText: 'Buscar por nombre o clave',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 400,
                    child: ListView.builder(
                      itemCount: seguidoresFiltrados.length,
                      itemBuilder: (BuildContext context, int index) {
                        String nombreCompleto = seguidoresFiltrados[index]['nombre'] ?? "";
                        List<String> nombreApellido = nombreCompleto.split(" ");

                        String iniciales = "";
                        for (var i = 0; i < (nombreApellido.length >= 2 ? 2 : 1); i++) {
                          if (nombreApellido[i].isNotEmpty) {
                            iniciales += nombreApellido[i][0];
                          }
                        }

                        return ListTile(
                          leading: CircleAvatar(
                            child: Text(
                              iniciales,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(nombreCompleto),
                            ],
                          ),
                          subtitle: Text(seguidoresFiltrados[index]['clave'] ?? ""),
                          trailing: ElevatedButton(
                            onPressed: () {
                              // Acción a realizar al hacer clic en el botón
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(16.0),
                              //backgroundColor: Theme.of(context).primaryColor, // Color primario de la aplicación
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                //side: BorderSide(color: Theme.of(context).primaryColor), // Borde del mismo color que el fondo
                                side: BorderSide(color: Colors.blue.shade100),
                              ),
                            ),
                            child: Text(
                              'Registrar',
                              style: TextStyle(
                                //color: Theme.of(context).primaryColor, // Color del texto igual al color primario
                                color: Colors.blue.shade100,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
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
