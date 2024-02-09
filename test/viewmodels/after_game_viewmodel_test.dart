import 'package:flutter_test/flutter_test.dart';
import 'package:plasticdiver/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AfterGameViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}