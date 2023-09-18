import 'package:bitacora_proceza/config/theme/app_theme.dart';
import 'package:bitacora_proceza/presentation/biprof000/views/biprof000_login_view.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    //MultiProvider(
      //providers: const [
        //ChangeNotifierProvider(create: (_) => ChatProvider())
      //],
      //child:
       MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bitacora alfer',
        theme: AppTheme(selectedColor: 3).getTheme(),
        home: Biprof000LoginView()
      );
    //);
  }
}

