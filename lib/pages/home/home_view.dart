import 'package:flutter/material.dart';
import 'package:news_street/pages/home/widget/category_list_view.dart';

import 'package:news_street/pages/home/widget/news_listview_builder.dart';

class HomeView extends StatelessWidget {
  static const routeName = "home_view";

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
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
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
              child: CategoryList()),
          //-----------------------------------------------------
          NewsListViewBuilder(category: 'general',),
        ],
      ),

      // Column(
      //   children: [
      //     CategoryList(),
      //     const NewsListView(),
      //   ],
      // ),
    );
  }
}


