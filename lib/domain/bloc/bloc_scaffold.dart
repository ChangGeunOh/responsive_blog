import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocScaffold<B extends StateStreamableSource<S>, S>
    extends StatelessWidget {
  final B Function(BuildContext context) create;
  final Widget Function(BuildContext context, B bloc, S state) builder;

  final AppBar? appBar;
  final Color? backgroundColor;
  final Widget? bottomSheet;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final Widget Function(BuildContext context, B bloc, S state)? drawerBuilder;
  final Widget Function(BuildContext context, B bloc, S state)? floatingBuilder;
  final Widget Function(BuildContext context, B bloc, S state)? bottomBuilder;

  const BlocScaffold({
    Key? key,
    required this.create,
    required this.builder,
    this.drawer,
    this.drawerBuilder,
    this.appBar,
    this.backgroundColor,
    this.bottomSheet,
    this.floatingActionButton,
    this.floatingBuilder,
    this.bottomBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: create,
      child: BlocBuilder<B, S>(
        builder: (context, state) {
          final bloc = context.read<B>();
          return Scaffold(
            key: key,
            appBar: appBar,
            drawer: drawerBuilder == null
                ? drawer
                : drawerBuilder!(context, bloc, state),
            backgroundColor: backgroundColor,
            body: builder(context, bloc, state),
            bottomSheet: bottomBuilder == null
                ? bottomSheet
                : bottomBuilder!(context, bloc, state),
            floatingActionButton: floatingBuilder == null
                ? floatingActionButton
                : floatingBuilder!(context, bloc, state),
          );
        },
      ),
    );
  }
}
