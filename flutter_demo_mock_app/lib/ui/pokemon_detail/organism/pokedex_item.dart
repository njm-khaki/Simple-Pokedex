import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokedexItem extends ConsumerWidget {
  const PokedexItem({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 8,
            top: 4,
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Row(
          children: children
              .map(
                (child) => Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 4,
                  ),
                  child: child,
                ),
              )
              .toList(),
        ),
        Divider(),
      ],
    );
  }
}
