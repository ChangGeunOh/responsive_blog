import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_blog/common/const/constants.dart';
import 'package:responsive_blog/domain/bloc/bloc_event.dart';
import 'package:responsive_blog/presentation/screen/main/bloc/main_event.dart';

import '../bloc/main_bloc.dart';
import 'web_menu_item.dart';

class WebMenu extends StatelessWidget {
  const WebMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<MainBloc>();
    print('WebMenu>${bloc.state.index}');
    return Row(
      children: menuItems
          .mapIndexed(
            (index, menu) => WebMenuItem(
              isActive: bloc.state.index == index,
              text: menu,
              onTap: () {
                bloc.add(BlocEvent(MainEventType.menu, extra: index));
              },
            ),
          )
          .toList(),
    );
  }
}
