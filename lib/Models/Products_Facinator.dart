import 'package:flutter/material.dart';

class Facinator {
  final String title, image, description;
  final int price, id, size;
  final Color color;
  Facinator(
      {this.color,
      this.description,
      this.id,
      this.image,
      this.price,
      this.size,
      this.title});
}

List<Facinator> Products = [
  Facinator(
    id: 1,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 5000,
    image: "images/fc.jpg",
    color: Color(0xFF6D7A41),
  ),
  Facinator(
    id: 2,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 8400,
    image: "images/fc1.jpg",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 3,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 11000,
    image: "images/fc2.jpg",
    color: Color(0xFF2D4350),
  ),
  Facinator(
    id: 4,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 5400,
    image: "images/fc3.jpg",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 5,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 5800,
    image: "images/fc4.jpg",
    color: Color(0xFF040406),
  ),
  Facinator(
    id: 6,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 5900,
    image: "images/fc5.jpg",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 7,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 7500,
    image: "images/fc6.jpg",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 8,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 6000,
    image: "images/fc7.jpg",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 9,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 8000,
    image: "images/fc8.jpg",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 10,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 6000,
    image: "images/fc9.jpg",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 11,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 5500,
    image: "images/fc10.jpg",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 12,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 9000,
    image: "images/fc11.png",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 13,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 4500,
    image: "images/fc12.png",
    color: Color(0xFF577365),
  ),
  Facinator(
    id: 14,
    title: "Outing outfit",
    size: 12,
    description: "very good fasinator",
    price: 8000,
    image: "images/fc13.png",
    color: Color(0xFF577365),
  ),
];
