import 'package:bitacora_proceza/config/helpers/formatters/formatters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Biprof000LoginView extends StatelessWidget {
  final userController = TextEditingController();

  final passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final Map<String, dynamic> response = {};

  Biprof000LoginView({super.key});

  bool validExistUser() {
    if (userController.text == 'ALFER' && passController.text == '123.Hola') {
      return true;
    }
    throw 'Usuario o contraseña incorrectos';
  }

  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    IconData iconPass = Icons.remove_red_eye;
    //String text = '';

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('BITACORA'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
//            Image.asset(
//              'assets/img/logo_agroapp.png',
//            ),
            const CircleAvatar(radius: 30, child: Icon(Icons.person)),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 450),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Usuario',
                            suffixIcon: Icon(Icons.person),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Requerido';
                            }
                            return null;
                          },
                          inputFormatters: [
                            UpperCaseTextFormatter(),
                          ],
                          controller: userController,
                        )),
                    Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
                        child: TextFormField(
                          obscureText: obscureText,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Contraseña',
                            hintText: '******',
                            suffixIcon: IconButton(
                              icon: Icon(iconPass),
                              onPressed: () {
                                obscureText = !obscureText;
                                if (obscureText) {
                                  iconPass = Icons.remove_red_eye;
                                } else {
                                  iconPass = Icons.vpn_key;
                                }
                                //setState(() {});
                              },
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Requerido';
                            }
                            return null;
                          },
                          controller: passController,
                        )),
                    ElevatedButton(
                      style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 14.0)),
                      onPressed: () {
                        //Validar que los campos de usuario y contraseña esten llenos.
                        if (_formKey.currentState!.validate()) {
                          
                          showCupertinoDialog(
                            context: context,
                            builder: ((context) => const Dialog(
                              child: Column(
                                children: [
                                  Text('Iniciando sesion'),
                                  Text(''),
                                ],
                              ),
                            ))
                          );
                          try {
                            // Enviar peticion para validar usuario en el servidor.
                            if (validExistUser()) {
                              Navigator.pushNamedAndRemoveUntil(context,'/menu', (Route<dynamic> route) => false);
                              }
                          } catch (e) {
                            Navigator.of(context).pop();
                            
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Problema al iniciar sesión: ${e.toString()}.'),
                              ),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Sin conexión a internet.'),
                            ),
                          );
                        }
                      },
                      child: const Text('INICIAR SESIÓN'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        color: Theme.of(context).colorScheme.primary,
        child:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.asset(
            //  'assets/img/ic_lobo_white_foreground.png',
            //  width: 40.0,
            //),
            Text(
              '2023 Alfer Romero Villa',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
