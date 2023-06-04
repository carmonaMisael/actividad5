import 'package:_food_delivery_ui_practice/modelos/helados.dart';

class Sucursal {
  final String imagen;
  final String nombre;
  final String direccion;
  final double clasificacion;
  final List<Comida> menu;

  Sucursal(
      {required this.imagen,
      required this.nombre,
      required this.direccion,
      required this.clasificacion,
      required this.menu});
}
