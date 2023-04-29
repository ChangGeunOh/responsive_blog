import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/domain/bloc/bloc_event.dart';
import 'package:responsive_blog/presentation/component/responsive.dart';
import 'package:responsive_blog/presentation/screen/main/bloc/main_event.dart';

import '../../../../common/const/theme.dart';
import '../bloc/main_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'social.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MainBloc>();
    final state = bloc.state;

    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          onPressed: () => bloc.openOrCloseDrawer(),
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      SvgPicture.asset('assets/icons/logo.svg'),
                      const Spacer(),
                      if (Responsive.isDesktop(context)) const WebMenu(),
                      const Spacer(),
                      const Social(),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding * 2),
                  const Text(
                    'Welcome to Our Blog',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: kDefaultPadding,
                    ),
                    child: Text(
                      "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RaleWay',
                        height: 1.5,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            'Learn More',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(width: kDefaultPadding / 2),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                 if (Responsive.isDesktop(context)) const SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
