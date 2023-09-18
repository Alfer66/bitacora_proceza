/*
import 'package:flutter/material.dart';

class OrdenCompraProvider with ChangeNotifier {
  DateTime _fechaActual = DateTime.now();
  DateTime _fechaEntrega = DateTime.now();

  DateTime get fechaActual => _fechaActual;
  set fechaActual(DateTime value) {
    _fechaActual = value;
    notifyListeners();
  }

  DateTime get fechaEntrega => _fechaEntrega;
  set fechaEntrega(DateTime value) {
    _fechaEntrega = value;
    notifyListeners();
  }

  //! sacar la cantidad de plantas tecleada por el usuario
  int cantidadInicial = 50000;
  int CantidadSumaResta = 1000;

  //! Datos compra plantas
  //? cantidadInicial,
  int? posicion;
  int idProductoServicio = 0;
  String? nombrePlantula;
  String? tipoPlantula;
  String? viveroPlantula;
  List<Map<String, dynamic>> productosServ = [];

  //? Tipo
  final List<String> itemList = [];
  late String dropdownValue = itemList[0];

  //! manejar las listas de datos para mandar al componente tarjeta_producto_compra

  //? Guarda los datos para mandarlos al componente tarjeta_producto_compra
  List<Map<String, dynamic>> _misDatos = [];

  List<Map<String, dynamic>> get misDatos => _misDatos;

  set misDatos(List<Map<String, dynamic>> value) {
    _misDatos = value;
    notifyListeners();
  }

  //! OrdenCompraState
  bool existenCompras = false;

  List<Map<String, dynamic>> variedad = [];

  //! Mostrar y ocultar componentes
  bool ordenarPlantula = true;
  bool ordenCompraVariedad = false;
  bool ordenDeCompraExitosamente = false;

  void showOrdenarPlantula() {
    ordenarPlantula = true;
    ordenCompraVariedad = false;
    ordenDeCompraExitosamente = false;
    notifyListeners();
  }

  void showOrdenCompraVariedad() {
    ordenarPlantula = false;
    ordenCompraVariedad = true;
    ordenDeCompraExitosamente = false;
    notifyListeners();
  }

  void showOrdenDeCompraExitosamente() {
    ordenarPlantula = false;
    ordenCompraVariedad = false;
    ordenDeCompraExitosamente = true;
    notifyListeners();
  }

  void agregarPlantula() {
    if (nombrePlantula != null &&
        tipoPlantula != null &&
        viveroPlantula != null) {
      print('Datos completos');

      //? Para agregar una tarjeta a la lista
      misDatos.add({
        'posicion': posicion,
        'idProductoServicio': idProductoServicio,
        'cantidadInicial': cantidadInicial,
        'cantidadSumaResta': CantidadSumaResta,
        'nombrePlantula': nombrePlantula,
        'tipoPlantula': tipoPlantula,
        'viveroPlantula': viveroPlantula,
      });
      idProductoServicio = 0;
      cantidadInicial = 50000;
      nombrePlantula = null;
      tipoPlantula = null;
      viveroPlantula = null;
    } else {
      idProductoServicio = 0;
      cantidadInicial = 50000;
      nombrePlantula = null;
      tipoPlantula = null;
      viveroPlantula = null;
      print('Datos incompletos');
    }
  }
}
*/