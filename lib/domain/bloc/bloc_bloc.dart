import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BlocBloc<Event, State> extends Bloc<Event, State> {
  final BuildContext context;

  BlocBloc(this.context, State initialState): super(initialState) {
    on<Event>(onBlocEvent);
  }

  FutureOr<void> onBlocEvent(Event event, Emitter<State> emit);
}
