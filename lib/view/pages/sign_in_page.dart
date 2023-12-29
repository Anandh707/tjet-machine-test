import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tec_jet_machine/controller/auth_providers.dart';
import 'package:tec_jet_machine/services/auth_services.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(
                "assets/Rectangle 52.png",
                fit: BoxFit.cover,
                height: 512,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Drive in without delay",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const Text(
              "Lorem ipsum dolor sit amet consectetur.\nNeque et nulla et.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 66, 66, 66),
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
              ),
              onPressed: () async {
                try {
                  UserCredential userCredential =
                      await AuthServices.signInWithGoogle();
                  ref.read(userProvider.notifier).state = userCredential.user;
                } on FirebaseAuthException catch (e) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "Login Failed, please try again\n${e.message}")));
                  }
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/google 4.png"),
                  const Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
