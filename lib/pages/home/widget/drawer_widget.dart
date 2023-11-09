import 'package:flutter/material.dart';

import '../home_view.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      width: mediaQuery.width * 0.7,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: mediaQuery.height * 0.15,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Street ", style: theme.textTheme.titleMedium),
                Text(
                  "News",
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: Colors.orange),
                )
              ],
            ),
          ),
          Container(
            height: 5,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.grey
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeView.routeName);
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16),
              child: Row(
                children: [
                  const Icon(
                    Icons.home,
                    size: 32,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Home",
                    style: theme.textTheme.titleMedium!
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16),
            child: Row(
              children: [
                const Icon(
                  Icons.settings,
                  size: 32,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Settings",
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
