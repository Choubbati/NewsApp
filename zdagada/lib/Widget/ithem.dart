import 'package:flutter/material.dart';
import 'package:zdagada/Model/Category_Model.dart';
import 'package:zdagada/Screens/CaategoryView.dart';

class ithem extends StatelessWidget {
  const ithem({super.key, required this.catego_model});

  final Catego_Model catego_model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CategoryView(
              Categor: catego_model.NameCatego,
            );
          }));
        },
        child: Column(
          children: [
            Container(
              height: 105,
              width: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(catego_model.image),
                  ),
                  borderRadius: BorderRadius.circular(16)),
            ),
            Text(
              catego_model.NameCatego,
              style: TextStyle(fontSize: 19),
            )
          ],
        ),
      ),
    );
  }
}
