import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flycation/services/user_services.dart';
import 'package:flycation/ui/pages/widgets/custom_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Setting Page",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: Text("Account"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Account"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Account"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Account"),
                onTap: () {},
              ),
              CustomButton(
                title: 'Logout',
                onPressed: () async {
                  try {
                    await FirebaseAuth.instance.signOut();

                    if (!context.mounted) return;

                    Navigator.pushNamedAndRemoveUntil(
                        context, '/get-started', (route) => false);
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Logout gagal: ${e.toString()}"),
                        ),
                      );
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
