import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tec_jet_machine/controller/auth_providers.dart';
import 'package:tec_jet_machine/services/auth_services.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          CircleAvatar(
            radius: 80,
            backgroundImage: ref.watch(userProvider)?.photoURL == null
                ? null
                : NetworkImage(ref.watch(userProvider)!.photoURL!),
          ),
          const SizedBox(height: 24),
          Text(
            "${ref.watch(userProvider)?.displayName}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "${ref.watch(userProvider)?.email}",
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 48),
          ElevatedButton(
            onPressed: () async {
              try {
                await AuthServices.signOut();
              } on FirebaseAuthException catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "Logout Failed, please try again\n${e.message}")));
                }
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFA6A02),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 56,
                  vertical: 8,
                )),
            child: const Text("Logout"),
          )
        ],
      ),
    );
  }
}
