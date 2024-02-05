import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_app/providers/user_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text(
          context.watch<UserProvider>().userName,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
