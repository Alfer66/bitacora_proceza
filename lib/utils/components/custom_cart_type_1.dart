import 'package:bitacora_proceza/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCartType1 extends StatelessWidget {
  const CustomCartType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'Minim mollit dolor irure sint non aliqua consequat nisi labore amet sint exercitation amet sit.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
                style: TextButton.styleFrom(primary: Colors.indigo),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              )
            ],
          ),
        )
      ],
    ));
  }
}