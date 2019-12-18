import 'package:flutter_test/flutter_test.dart';

import 'package:navigation_test/app/pages/home/pages/root/root_bloc.dart';

void main() {
  RootBloc bloc;

  setUp(() {
    bloc = RootBloc();
  });

  group('RootBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<RootBloc>());
    });
  });
}
