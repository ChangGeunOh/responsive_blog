import 'package:flutter/material.dart';

import '../../../../common/const/theme.dart';
import 'side_bar_container.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: 'Categories',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: 'Artificial Intelligence',
            numOfItems: 13,
            onTap: () {},
          ),
          Category(
            title: 'Augmented reality',
            numOfItems: 4,
            onTap: () {},
          ),
          Category(
            title: 'Development',
            numOfItems: 10,
            onTap: () {},
          ),
          Category(
            title: 'Flutter UI',
            numOfItems: 13,
            onTap: () {},
          ),
          Category(
            title: 'Technology',
            numOfItems: 13,
            onTap: () {},
          ),
          Category(
            title: 'UI/UX Design',
            numOfItems: 13,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback onTap;

  const Category({
    required this.title,
    required this.numOfItems,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: onTap,
        child: Text.rich(
          TextSpan(
            text: title,
            style: const TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                  text: ' ($numOfItems)',
                  style: const TextStyle(color: kBodyTextColor)),
            ],
          ),
        ),
      ),
    );
  }
}