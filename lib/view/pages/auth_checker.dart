import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tec_jet_machine/controller/auth_providers.dart';
import 'package:tec_jet_machine/view/pages/sign_in_page.dart';
import 'package:tec_jet_machine/view/widgets/common_botton_bar.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authCheckerProvider).when(
          data: (data) {
            if (data == null) {
              return const SignInPage();
            } else {
              return CommonBottomBar();
            }
          },
          error: (error, stackTrace) => Scaffold(
            body: Center(
              child: Text("$error"),
            ),
          ),
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
  }
}
