import 'package:flutter/material.dart';

import '../../../models/articale_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  List<ArticaleModel> articles = [];

  NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return NewsTile(
          articaleModel: articles[index],
        );
      }),
    );
  }
}
