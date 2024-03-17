import 'package:flutter/material.dart';
import 'package:zdagada/Model/Article_Model.dart';
import 'package:zdagada/Widget/List_View_vertical.dart';

class Sliver_List_Builder extends StatelessWidget {
  Sliver_List_Builder({
    super.key,
    required this.arti,
  });

  final List<Article_Model> arti;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: arti.length,
            (context, index) {
      return List_View_vertical(
        article_model: arti[index],
      );
    }));
  }
}
