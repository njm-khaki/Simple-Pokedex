import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/login/uncertified_state.dart';
import 'package:flutter_demo_mock_app/states/login/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);

    switch (state) {
      case UncertifiedState():
        return Scaffold(
          appBar: AppBar(
            title: Text('Pokedex'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(),
              TextField(),
              ElevatedButton(
                onPressed: () {},
                child: Text('login'),
              )
            ],
          ),
        );
    }
  }
}
