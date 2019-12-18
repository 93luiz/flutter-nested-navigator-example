import 'package:navigation_test/app/pages/home/pages/detail/detail_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:navigation_test/app/pages/home/pages/detail/detail_page.dart';

class DetailModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => DetailBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => DetailPage();

  static Inject get to => Inject<DetailModule>.of();
}
