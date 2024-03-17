import 'package:flutter/material.dart';
import 'package:zdagada/Model/Article_Model.dart';

class List_View_vertical extends StatelessWidget {
  const List_View_vertical({
    super.key,
    required this.article_model,
  });
  final Article_Model article_model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: article_model.image != null
              ? Image.network(
                  article_model.image!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : Image.asset(
                  "assets/image/5ce6a73817fb0ab67f4b5555_16.BusinessModel-min.jpg"),
          borderRadius: BorderRadius.circular(16),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
        Text(
          "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
