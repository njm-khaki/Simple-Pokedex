import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// リトライボタン
class RetryButton extends ConsumerWidget {
  const RetryButton({
    super.key,
    required this.onPressed,
  });

  // 押下時の処理
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Retry'),
    );
  }
}
