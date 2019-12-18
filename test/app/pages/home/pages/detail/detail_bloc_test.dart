import 'package:flutter_test/flutter_test.dart';

import 'package:navigation_test/app/pages/home/pages/detail/detail_bloc.dart';

void main() {
  DetailBloc bloc;

  setUp(() {
    bloc = DetailBloc();
  });

  group('DetailBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<DetailBloc>());
    });
  });
}
