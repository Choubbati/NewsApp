import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:zdagada/Model/Article_Model.dart';
import 'package:zdagada/Service/Service.dart';
import 'package:zdagada/Widget/List_View_horizontal.dart';
import 'package:zdagada/Widget/Sliver_List_Builder.dart';

class Home_page extends StatelessWidget {
  const Home_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'chik',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
              ),
              Text(
                'kago',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: List_View_horizontal(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 2,
              ),
            ),
            List_view_final(
              Category: 'general',
            )
          ],
        )

        //  List_View_vertical()

        //  List_View_horizontal()

        //  ithem(),
        );
  }
}

class List_view_final extends StatefulWidget {
  const List_view_final({
    super.key,
    required this.Category,
  });
  final String Category;

  @override
  State<List_view_final> createState() => _List_view_finalState();
}

class _List_view_finalState extends State<List_view_final> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getGeneratNews(Category: widget.Category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article_Model>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Sliver_List_Builder(arti: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text('Oops was an error');
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });

    //  Sliver_List_Builder();
  }
}
