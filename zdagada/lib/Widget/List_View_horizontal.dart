import 'package:flutter/material.dart';
import 'package:zdagada/Model/Category_Model.dart';
import 'package:zdagada/Widget/ithem.dart';

class List_View_horizontal extends StatelessWidget {
  const List_View_horizontal({
    super.key,
  });
  final List<Catego_Model> list_catego = const [
    Catego_Model(
        image: 'assets/image/5ce6a73817fb0ab67f4b5555_16.BusinessModel-min.jpg',
        NameCatego: 'business'),
    Catego_Model(
        image:
            'assets/image/1000_F_121790612_FN9IodcNfQfO6jcOP6YgKc1YbIOo7JXC.jpg',
        NameCatego: 'health'),
    Catego_Model(
        image: 'assets/image/download.jpeg', NameCatego: 'entertainment'),
    Catego_Model(image: 'assets/image/outils-sport.jpg', NameCatego: 'sports'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list_catego.length,
          itemBuilder: (contex, index) {
            return ithem(
              catego_model: list_catego[index],
            );
          }),
    );
  }
}
