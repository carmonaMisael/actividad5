import 'package:_food_delivery_ui_practice/datos/datos.dart';
import 'package:_food_delivery_ui_practice/modelos/pedido.dart';
import 'package:flutter/material.dart';

class OrdenReciente extends StatelessWidget {
  const OrdenReciente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Orden Reciente",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: 1.2),
          ),
        ),
        Container(
          height: 120,
          // color: Colors.blue,
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              physics: const ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: usuarioActual.pedido.length,
              itemBuilder: (BuildContext context, int index) {
                Pedido order = usuarioActual.pedido[index];
                return _buildRecentOrder(context, order);
              }),
        )
      ],
    );
  }

  Widget _buildRecentOrder(BuildContext context, Pedido order) {
    return Container(
      width: 320,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1.0, color: Colors.grey.shade200)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(order.comida.imagen),
                            fit: BoxFit.cover)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.comida.nombre,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          order.sucursal.nombre,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(order.fecha,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            width: 48,
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(30)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
