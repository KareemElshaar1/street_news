import 'package:flutter/material.dart';

import '../../../models/articale_model.dart';

class NewsTile extends StatelessWidget {
  final ArticaleModel articaleModel;
  NewsTile({super.key, required this.articaleModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              articaleModel.Image?? "assets/No_image.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
              articaleModel.title,

            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articaleModel.subTitle??   " ",
            maxLines: 2,
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
