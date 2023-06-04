import 'package:_food_delivery_ui_practice/modelos/helados.dart';
import 'package:_food_delivery_ui_practice/modelos/sucursal.dart';

class Pedido {
  final Sucursal sucursal;
  final Comida comida;
  final String fecha;
  final int cantidad;

  Pedido(
      {required this.sucursal,
      required this.comida,
      required this.fecha,
      required this.cantidad});
}
