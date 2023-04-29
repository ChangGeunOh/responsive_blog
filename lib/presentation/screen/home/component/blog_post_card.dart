import 'package:flutter/material.dart';
import 'package:responsive_blog/domain/model/blog_data.dart';

import '../../../../common/const/database.dart';
import '../../../../common/const/theme.dart';
import '../../../component/responsive.dart';

class BlogPostCard extends StatelessWidget {
  final BlogData blogData;
  const BlogPostCard({
    required this.blogData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(
              blogData.image,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Design'.toUpperCase(),
                      style: const TextStyle(
                        color: kDarkBlackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    Text(
                      blogData.date,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    blogData.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 32 : 24,
                      fontFamily: 'Raleway',
                      color: kDarkBlackColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  blogData.description,
                  style: const TextStyle(height: 1.5),
                  maxLines: 4,
                ),
                const SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding:
                            const EdgeInsets.only(bottom: kDefaultPadding / 4),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: kPrimaryColor,
                              width: 3,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Read More',
                          style: TextStyle(
                            color: kDarkBlackColor,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_up_outlined,
                        color: kDefaultIconDarkColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.messenger_outline_outlined,
                        color: kDefaultIconDarkColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share_outlined),
                      color: kDefaultIconDarkColor,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
