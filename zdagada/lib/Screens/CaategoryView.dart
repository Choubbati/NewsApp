import 'package:flutter/material.dart';
import 'package:zdagada/Screens/Home_page.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.Categor});
  final String Categor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Categor),
      ),
      body: CustomScrollView(
        slivers: [
          List_view_final(
            Category: Categor,
          ),
        ],
      ),
    );
  }
}
