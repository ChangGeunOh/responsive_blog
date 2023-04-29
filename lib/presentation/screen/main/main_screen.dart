import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_blog/common/const/constants.dart';
import 'package:responsive_blog/domain/bloc/bloc_event.dart';
import 'package:responsive_blog/domain/bloc/bloc_layout.dart';
import 'package:responsive_blog/presentation/screen/main/bloc/main_event.dart';
import 'package:responsive_blog/presentation/screen/main/bloc/main_state.dart';

import '../../../common/const/theme.dart';
import '../home/home_screen.dart';
import 'bloc/main_bloc.dart';
import 'component/header.dart';
import 'component/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocLayout<MainBloc, MainState>(
      create: (context) => MainBloc(context, MainState()),
      builder: (context, bloc, state) {
        return Scaffold(
          key: bloc.scaffoldKey,
          drawer: SideMenu(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Header(),
                Container(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  constraints: const BoxConstraints(maxWidth: kMaxWidth),
                  child: const SafeArea(child: HomeScreen()),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

