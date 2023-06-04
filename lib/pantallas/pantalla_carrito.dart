import 'package:_food_delivery_ui_practice/datos/datos.dart';
import 'package:_food_delivery_ui_practice/modelos/pedido.dart';
import 'package:flutter/material.dart';

class PantallaCarrito extends StatefulWidget {
  const PantallaCarrito({Key? key}) : super(key: key);

  @override
  State<PantallaCarrito> createState() => _PantallaCarrito();
}

class _PantallaCarrito extends State<PantallaCarrito> {
  @override
  Widget build(BuildContext context) {
    double precioTotal = 0.0;
    usuarioActual.carrito.forEach((Pedido order) {
      precioTotal += order.comida.precio * order.cantidad;
    });
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Carrito (${usuarioActual.carrito.length})"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            if (index < usuarioActual.carrito.length) {
              Pedido order = usuarioActual.carrito[index];
              return _buildCart(order);
            }
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tiempo Total Estimado",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "25 min",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Costo Total",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$${precioTotal.toStringAsFixed(2)}",
                        style: TextStyle(
                            color: Colors.green.shade700,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 80)
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              Divider(thickness: 1.0, color: Colors.grey),
          itemCount: usuarioActual.carrito.length + 1),
      bottomSheet: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.deepOrangeAccent, boxShadow: [
          BoxShadow(blurRadius: 6, color: Colors.black26, offset: Offset(0, -1))
        ]),
        child: Center(
          child: Text(
            "COMPRAR",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _buildCart(Pedido order) {
    return Container(
      height: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(12),
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(order.comida.imagen),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          order.comida.nombre,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          order.sucursal.nombre,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.8, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 20),
                              Text(
                                order.cantidad.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: Text(
              "\$${order.comida.precio * order.cantidad}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
