import 'package:navigation_test/app/pages/home/pages/root/root_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:navigation_test/app/pages/home/pages/root/root_page.dart';

class RootModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => RootBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => RootPage();

  static Inject get to => Inject<RootModule>.of();
}
