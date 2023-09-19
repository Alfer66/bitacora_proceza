import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.white,
              icon: Icons.fact_check_outlined,
              text: 'Desplegar war',
              url: '/primary',
            ),
            _SingleCard(
              color: Colors.white,
              icon: Icons.location_on_outlined,
              text: 'El otro',
              url: '/',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.white,
              icon: Icons.receipt_long_sharp,
              text: 'Registro de aplicaciones',
              url: '/',
            ),
            _SingleCard(
              color: Colors.white,
              icon: Icons.house_siding_outlined,
              text: 'Registro de aplicaciones',
              url: '/',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final String url;

  const _SingleCard({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
    required this.url
  }) : super(key: key);

  /// ! Crea los widgets internos de las tarjetas
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.pushNamed(context, url);
      },
      child: _CardBackground(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 30,
              child: Icon(icon, size: 40, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(color: Colors.green[900], fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  /// ! Relacionado al fondo de efecto flur
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
         child: BackdropFilter(
           filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 180,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              //color: Colors.opacity,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black)),
          child: child,
           ),
        ),
      ),
    );
  }
}
