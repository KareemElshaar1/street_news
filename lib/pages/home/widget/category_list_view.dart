import 'package:flutter/material.dart';

import '../../../models/category_model.dart';
import 'category_card.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
        image: "assets/business.avif",
        CategoryName: "business"),
    CategoryModel(
        image: "assets/entertaiment.avif",
        CategoryName: "entertainment"),
    CategoryModel(
        image: "assets/general.avif",
        CategoryName: "general"),
    CategoryModel(
        image: "assets/health.avif",
        CategoryName: "health"),
    CategoryModel(
        image: "assets/science.avif",
        CategoryName: "science"),
    CategoryModel(
        image: "assets/sports.avif",
        CategoryName: "sports"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
