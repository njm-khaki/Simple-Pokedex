import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/login/login_page_state.dart';
import 'package:flutter_demo_mock_app/states/login/usecase/uncertified_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UncertifiedContents extends ConsumerWidget {
  const UncertifiedContents({
    super.key,
    required this.state,
    required this.notifier,
  });

  final UncertifiedState state;
  final UncertifiedCase notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'mail address',
          ),
          onChanged: notifier.onChangeMailAdress,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'password',
          ),
          obscureText: true,
          onChanged: notifier.onChangePassword,
        ),
        ElevatedButton(
          onPressed: () => notifier.onClickLoginButton(context),
          child: Text('login'),
        )
      ],
    );
  }
}
