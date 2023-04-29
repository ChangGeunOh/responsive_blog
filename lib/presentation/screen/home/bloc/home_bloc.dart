import 'dart:async';

import 'package:bloc/src/bloc.dart';
import 'package:responsive_blog/domain/bloc/bloc_bloc.dart';
import 'package:responsive_blog/domain/bloc/bloc_event.dart';
import 'package:responsive_blog/presentation/screen/home/bloc/home_event.dart';
import 'package:responsive_blog/presentation/screen/home/bloc/home_state.dart';

class HomeBloc extends BlocBloc<BlocEvent<HomeEventType>, HomeState> {
  HomeBloc(super.context, super.initialState);

  @override
  FutureOr<void> onBlocEvent(BlocEvent<HomeEventType> event, Emitter<HomeState> emit) {
    switch(event.type) {

      case HomeEventType.init:
        // TODO: Handle this case.
        break;
    }

  }

}