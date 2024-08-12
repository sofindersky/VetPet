import 'package:flutter/material.dart';

class HomeScreenLeftColumn extends StatelessWidget {
  const HomeScreenLeftColumn({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: children,
    );
  }
}
