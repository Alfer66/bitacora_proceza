//import 'package:agroapp_trc/utils/database/database/database.dart';
//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;
import 'dart:io';
//import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
//import 'package:connectivity_plus/connectivity_plus.dart';

class AppUtils {
  dynamic mapElement(element) {
    return element;
  }

  //TODO: Investigar para que es esta clase????
  Future<String> createImageFromWidgetToTemp(GlobalKey globalKey) async {
    String path = "";
    try {
      RenderRepaintBoundary boundary =
          globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary;
      var image = await boundary.toImage();
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();
      //Directory tempDir = await getTemporaryDirectory();
      //String tempPath = tempDir.path;
      final ts = DateTime.now().millisecondsSinceEpoch.toString();
      //path = '$tempPath/$ts.png';
      final file = await File(path).create();
      await file.writeAsBytes(pngBytes);
    } catch (ex) {}
    return path;
  }

  String generateGetUrl(Map<String, String>? queryParameters) {
    String url = '?';
    int cont = 0;
    queryParameters!.forEach((key, value) {
      url += cont > 0 ? '&' : '';
      url += value == 'null' ? '' : '$key=$value';
      cont++;
    });
    return url == '?' ? '' : url;
  }

  String generateUUID() {
    return const Uuid().v1();
  }

  DateTime dateNowWithoutHour() {
    DateTime now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  String dateTimeToStringFormat(DateTime? date, String format) {
    format = format.isEmpty ? 'dd MMM yyyy' : format;
    var formatter = DateFormat(format);
    return formatter.format(date!);
  }

  //TODO: cambiar por base que utilise
  //Future<String> getDatabasePath() async {
    ///return await AgroDatabase.getDataBasePath();
  //}

  //TODO: Ver por que marca error Connectivity(), si usa http o connectivity_plus, buscar la forma de hacer lo mismo con dio
  /*
  Future<bool> validaConexionInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    bool conexion = false;

    if (connectivityResult == ConnectivityResult.none) {
      // No hay conexión a Internet
      conexion = false;
    } else {
      try {
        final dio = Dio();
        final response = await dio.get('https://www.google.com');
        if (response.statusCode == 200) {
          conexion = true;
        } else {
          conexion = false;
        }
      } catch (e) {
        conexion = false;
      }
    }
    return conexion;
  }
  */
}
