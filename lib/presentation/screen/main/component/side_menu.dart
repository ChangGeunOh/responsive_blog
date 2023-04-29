import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/const/constants.dart';
import '../../../../common/const/theme.dart';
import '../../../../domain/bloc/bloc_event.dart';
import '../bloc/main_bloc.dart';
import '../bloc/main_event.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MainBloc>();
    return Drawer(
      backgroundColor: kDarkBlackColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 3.5,
              ),
              child: SvgPicture.asset('assets/icons/logo.svg'),
            ),
          ),
          ...menuItems.mapIndexed(
                (index, menu) => DrawerItem(
              title: menu,
              isActive: index == bloc.state.index,
              onTap: () => bloc.add(
                BlocEvent(MainEventType.menu, extra: index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const DrawerItem({
    required this.title,
    required this.isActive,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: onTap,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
