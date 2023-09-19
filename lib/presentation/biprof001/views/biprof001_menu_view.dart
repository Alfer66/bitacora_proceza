import 'package:bitacora_proceza/utils/components/componentes.dart';
import 'package:flutter/material.dart';


class Biprof001MenuView extends StatelessWidget {
  const Biprof001MenuView({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(userName: 'Alfer Romero Villa'),
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CardTable(),
            //Image.asset('assets/img/logo_agroapp.ico'),
          ],
        ),
      ),
    );

  }
}