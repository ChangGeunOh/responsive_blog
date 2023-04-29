import 'package:flutter/material.dart';

import '../../../../common/const/theme.dart';
import 'side_bar_container.dart';

class RecentPostCard extends StatelessWidget {
  const RecentPostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
        title: 'Recent Post',
        child: Column(
          children: [
            RecentPost(
              image: "assets/images/recent_1.png",
              title: "Our “Secret” Formula to Online Workshops",
              onTap: () {},
            ),
            const SizedBox(height: kDefaultPadding),
            RecentPost(
              image: "assets/images/recent_2.png",
              title: "Digital Product Innovations from Warsaw with Love",
              onTap: () {},
            ),
          ],
        ));
  }
}

class RecentPost extends StatelessWidget {
  final String image, title;
  final VoidCallback onTap;

  const RecentPost({
    required this.image,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            const SizedBox(width: kDefaultPadding),
            Expanded(
              flex: 5,
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Raleway',
                  color: kDarkBlackColor,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
