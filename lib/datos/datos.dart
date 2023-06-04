// Food

import 'package:_food_delivery_ui_practice/modelos/helados.dart';
import 'package:_food_delivery_ui_practice/modelos/pedido.dart';
import 'package:_food_delivery_ui_practice/modelos/sucursal.dart';
import 'package:_food_delivery_ui_practice/modelos/usuario.dart';

final _helado =
    Comida(imagen: "assets/images/h.png", nombre: "Helado", precio: 8.99);

final _cono =
    Comida(imagen: "assets/images/c.png", nombre: "Cono", precio: 17.99);

final _raspado =
    Comida(imagen: "assets/images/r.jpg", nombre: "Raspado", precio: 14.99);

final _malteada =
    Comida(imagen: "assets/images/m.jpg", nombre: "Malteada", precio: 13.99);

final _paleta =
    Comida(imagen: "assets/images/p.jpg", nombre: "Paletas", precio: 9.99);

final _canasta = Comida(
    imagen: "assets/images/ca.jpg", nombre: "Helado canasta", precio: 14.99);

final _paletacrema = Comida(
    imagen: "assets/images/pc.jpg", nombre: "Paleta crema", precio: 11.99);

final _mordisko =
    Comida(imagen: "assets/images/s.jpg", nombre: "Sandwich", precio: 12.99);

// Restaurants

final _sucursal0 = Sucursal(
    imagen: "assets/images/he.jpeg",
    nombre: "Heladeria Flamingo",
    direccion: "C. La cuesta 2030",
    clasificacion: 5,
    menu: [
      _helado,
      _cono,
      _raspado,
      _malteada,
      _paleta,
      _canasta,
      _paletacrema,
      _mordisko
    ]);

final _sucursal1 = Sucursal(
    imagen: "assets/images/a.jpg",
    nombre: "El Arte Sano",
    direccion: "Av. Las Torres 5678",
    clasificacion: 4.1,
    menu: [_cono, _paleta, _raspado, _malteada, _canasta, _paletacrema]);

final _sucursal2 = Sucursal(
    imagen: "assets/images/b.jpg",
    nombre: "Buffala",
    direccion: "Plaza las Americas",
    clasificacion: 5,
    menu: [_cono, _canasta, _mordisko, _paletacrema, _paleta, _raspado]);

final _sucursal3 = Sucursal(
    imagen: "assets/images/cr.jpg",
    nombre: "Cremeria Toscana",
    direccion: "Plaza Misiones",
    clasificacion: 4.3,
    menu: [_helado, _malteada, _paleta, _paletacrema, _cono]);

final _sucursal4 = Sucursal(
    imagen: "assets/images/d.jpg",
    nombre: "Dulce de Leche",
    direccion: "Plaza Sendero",
    clasificacion: 4.0,
    menu: [_malteada, _mordisko, _helado, _paletacrema]);

// Restaurants List

final List<Sucursal> sucursales = [
  _sucursal0,
  _sucursal1,
  _sucursal2,
  _sucursal3,
  _sucursal4
];

// User

final usuarioActual = Usuario(nombre: "Misael Carmona", pedido: [
  Pedido(
      sucursal: _sucursal2,
      comida: _canasta,
      fecha: "Abr 30, 2022",
      cantidad: 1),
  Pedido(
      sucursal: _sucursal0, comida: _cono, fecha: "Abr 28, 2022", cantidad: 3),
  Pedido(
      sucursal: _sucursal1,
      comida: _helado,
      fecha: "Abr 30, 2022",
      cantidad: 2),
  Pedido(
      sucursal: _sucursal3,
      comida: _malteada,
      fecha: "Abr 30, 2022",
      cantidad: 1),
  Pedido(
      sucursal: _sucursal4,
      comida: _mordisko,
      fecha: "Abr 30, 2022",
      cantidad: 1)
], carrito: [
  Pedido(
      sucursal: _sucursal2,
      comida: _paletacrema,
      fecha: "Abr 29, 2022",
      cantidad: 2),
  Pedido(
      sucursal: _sucursal2,
      comida: _paleta,
      fecha: "Abr 30, 2022",
      cantidad: 1),
  Pedido(
      sucursal: _sucursal3,
      comida: _raspado,
      fecha: "Abr 30, 2022",
      cantidad: 1),
  Pedido(
      sucursal: _sucursal4,
      comida: _paletacrema,
      fecha: "Abr 29, 2022",
      cantidad: 3),
  Pedido(
      sucursal: _sucursal1, comida: _helado, fecha: "Abr 30, 2022", cantidad: 2)
]);
