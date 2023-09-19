import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  CustomDrawerState createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Alfer Romero'),
            accountEmail: Text('Alferr6@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/img/logo_agroapp.png'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Navegar a la pantalla de inicio
              Navigator.pushNamedAndRemoveUntil(
                  context, '/menu', (Route<dynamic> route) => false);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configuración'),
            onTap: () {
               // Navegar a la pantalla de configuración
            },
          ),
          ListTile(
            leading: const Icon(Icons.cloud_sync_sharp),
            title: const Text('Sincronizar'),
            onTap: () async {
            },
          ),
          ListTile(
            leading: const Icon(Icons.close),
            title: const Text('Cerrar sesión'),
            onTap: () async {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}
