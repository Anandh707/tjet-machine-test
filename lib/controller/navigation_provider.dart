import 'package:flutter_riverpod/flutter_riverpod.dart';

final indexProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});
