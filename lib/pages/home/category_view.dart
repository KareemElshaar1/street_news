import 'package:flutter/material.dart';
import 'package:news_street/pages/home/widget/drawer_widget.dart';
import 'package:news_street/pages/home/widget/news_listview_builder.dart';

import '../../models/category_model.dart';

class CategoryView extends StatelessWidget {
  static const routeName = "category_view";
  final String category;

  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Street ", style: theme.textTheme.titleMedium),
            Text(
              "News",
              style:
              theme.textTheme.titleMedium!.copyWith(color: Colors.orange),
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(category: category,)

        ],
      ),
    );
  }
}


