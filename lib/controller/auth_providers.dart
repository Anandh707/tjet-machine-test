import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tec_jet_machine/services/auth_services.dart';

final authCheckerProvider = StreamProvider<User?>((ref) async* {
  yield* AuthServices.authChecker();
});

final userProvider = StateProvider<User?>((ref) {
  return null;
});
