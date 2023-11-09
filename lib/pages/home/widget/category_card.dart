import 'package:flutter/material.dart';
import 'package:news_street/models/category_model.dart';
import 'package:news_street/pages/home/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context){
          return  CategoryView(category: category.CategoryName,);
        } ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Center(
              child: Text(category.CategoryName,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: Colors.white))),
        ),
      ),
    );
  }
}
