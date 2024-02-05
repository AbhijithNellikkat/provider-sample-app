import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_app/providers/user_provider.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  "UserName : ",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  context.watch<UserProvider>().userName,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: userNameController,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeUserName(newUserName: userNameController.text);
                FocusManager.instance.primaryFocus?.unfocus();
                userNameController.clear();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
