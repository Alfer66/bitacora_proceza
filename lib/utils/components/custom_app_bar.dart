import 'package:flutter/material.dart';

/// Witget para mostrar el appBar en las pantallas
///
///  Witget para la aplicacion bitacora
///
///  titulos (Opcional): Muestra el titulo de la pantalla, en caso de no ser
///    asignado se muestra el de Inicio con el nombre del usuario
///

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? titulos;
  final String? userName;
  final bool automaticallyImplyLeading;

  const CustomAppBar({
    super.key,
    this.titulos,
    this.userName = '404',
    this.automaticallyImplyLeading = false,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: true,
      title: Column(
        children: titulos != null
            ? [
                Text('$titulos'),
              ]
            : [
                const Text(
                  'Inicio',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  //! Muestra el nombre del usuario
                  userName!,
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
      ),
    );
  }
}
