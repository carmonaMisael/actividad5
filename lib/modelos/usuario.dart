import 'package:_food_delivery_ui_practice/modelos/pedido.dart';

class Usuario {
  final String nombre;
  final List<Pedido> pedido;
  final List<Pedido> carrito;

  Usuario({required this.nombre, required this.pedido, required this.carrito});
}
