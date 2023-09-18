import 'package:bitacora_proceza/config/helpers/formatters/formatters.dart';
import 'package:bitacora_proceza/config/theme/app_theme.dart';
import 'package:flutter/material.dart';


class Biprof000LoginView extends StatelessWidget {

  final userController = TextEditingController();

  final passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String text = '';

  bool obscureText = true;
  IconData iconPass = Icons.remove_red_eye;

  Map<String, dynamic> response = {};

  void validExistUser() async {
    /*
    bool conexionInternet = await AppUtils().validaConexionInternet();
    if (conexionInternet) {
      await Sladmf001Service().deleteUsuariosProductores();
      await Sladmf001Service().deleteUser();
    }
    bool exist = await Sladmf000Service().isExistUser();
    if (exist) {
      var responseToken = await Sladmf000Service().getToken();
      InitApp.apiToken =
          responseToken.isNotEmpty ? responseToken[0]['token'].toString() : '';
      Navigator.pushNamedAndRemoveUntil(
          context, '/second', (Route<dynamic> route) => false);
    }
    */
  }

  //const Biprof000LoginView({super.key});

  @override
  Widget build(BuildContext context) {
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
            const CircleAvatar(child: Icon(Icons.person), radius: 30),
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
                          
                          //isForm: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Requerido';
                            }
                            return null;
                          },
                          controller: passController,
                        )),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 14.0)),
                      onPressed: () async {
                        //Validar que los campos de usuario y contraseña esten llenos.
                        if (_formKey.currentState!.validate()) {
                        //  bool conexionInternet =
                        //      await AppUtils().validaConexionInternet();
                        //  if (conexionInternet) {
                        //    showCupertinoDialog(
                        //        context: context,
                        //        builder: ((context) => LoboLoadingDialog(
                        //            title: 'SIAL AGROAPP',
                        //            text: Provider.of<AuthProvider>(context)
                        //                .text)));
                        //    authProvider.setLoginText('Iniciando sesion');
                        //    try {
                        //      // Enviar peticion para validar usuario en el servidor.
                        //      response = await Sladmf000Service.processLogin({
                        //        'audience': AppConfig.of(context)!.audience,
                        //        'createdBy': AppConfig.of(context)!.createdBy,
                        //        'cveUsuario': userController.text,
                        //        'password': passController.text,
                        //        'expirationDate': 'true'
                        //      }, authProvider);
                              if (response["success"]) {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    '/second', (Route<dynamic> route) => false);
                              }
                        //    } catch (e) {
                        //      await Sladmf001Service()
                        //          .deleteUsuariosProductores();
                        //      await Sladmf001Service().deleteUser();
                              Navigator.of(context).pop();
                        //      print(e.toString());
                        //      LoboMessageDialog(
                        //              text:
                        //                  'Problema al iniciar sesión: ${e.toString()}',
                        //              context: context)
                        //          .show();
                        //    }
                          } else {
                        //    LoboMessageDialog(
                        //            text: 'Sin conexión a internet',
                        //            context: context)
                        //        .show();
                        //  }
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
        color:  Theme.of(context).colorScheme.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.asset(
            //  'assets/img/ic_lobo_white_foreground.png',
            //  width: 40.0,
            //),
            const Text(
              '2023 Alfer Romero Villa',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}