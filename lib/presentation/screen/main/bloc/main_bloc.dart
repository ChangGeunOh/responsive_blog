import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_blog/domain/bloc/bloc_bloc.dart';
import 'package:responsive_blog/domain/bloc/bloc_event.dart';
import 'package:responsive_blog/presentation/screen/main/bloc/main_event.dart';

import 'main_state.dart';

class MainBloc extends BlocBloc<BlocEvent<MainEventType>, MainState> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  MainBloc(super.context, super.initialState) {
    add(BlocEvent(MainEventType.init));
  }

  @override
  FutureOr<void> onBlocEvent(
      BlocEvent<MainEventType> event, Emitter<MainState> emit) {
    switch (event.type) {
      case MainEventType.init:
        // TODO: Handle this case.
        break;
      case MainEventType.menu:
        print('HomeBloc>${event.extra}');
        emit(state.copyWith(index: event.extra as int));
        break;
      case MainEventType.drawer:
        openOrCloseDrawer();
        // emit(state);
        break;
    }
  }

  void openOrCloseDrawer() {
    print('openOrCloseDrawer>${scaffoldKey.currentState!.isDrawerOpen}');
    if (scaffoldKey.currentState!.isDrawerOpen) {
      print('openOrCloseDrawer>${scaffoldKey.currentState!.isDrawerOpen}::');
      scaffoldKey.currentState!.closeDrawer();
    } else {
      scaffoldKey.currentState!.openDrawer();
    }
  }
}
