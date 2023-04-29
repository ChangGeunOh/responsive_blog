import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:responsive_blog/common/const/database.dart';
import 'package:responsive_blog/common/const/theme.dart';
import 'package:responsive_blog/domain/bloc/bloc_layout.dart';

import '../../component/responsive.dart';
import 'bloc/home_bloc.dart';
import 'bloc/home_state.dart';
import 'component/blog_post_card.dart';
import 'component/category_card.dart';
import 'component/recent_post_card.dart';
import 'component/search_card.dart';
import 'component/side_bar_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocLayout(
      create: (context) => HomeBloc(context, HomeState()),
      builder: (context, bloc, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: blogPosts
                    .mapIndexed((index, blog) => BlogPostCard(
                          blogData: blog,
                        ))
                    .toList(),
              ),
            ),
            if (!Responsive.isMobile(context))
              const SizedBox(width: kDefaultPadding),
            if (!Responsive.isMobile(context))
              Expanded(
                child: Column(
                  children: [
                    SearchCard(),
                    const SizedBox(height: kDefaultPadding),
                    CategoryCard(),
                    const SizedBox(height: kDefaultPadding),
                    RecentPostCard(),
                    // SidebarContainer(title: 'title', child: child)
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
