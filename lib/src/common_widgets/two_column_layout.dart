import 'package:flutter/material.dart';

class TwoColumnLayout extends StatelessWidget {
  const TwoColumnLayout({
    super.key,
    this.startFlex = 1,
    this.endFlex = 1,
    required this.start,
    required this.end,
  });
  final Widget start;
  final int startFlex;
  final int endFlex;
  final Widget end;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => constraints.maxWidth >= 600
            ? SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: startFlex, child: start),
                      const SizedBox(width: 4.0),
                      Expanded(flex: endFlex, child: end),
                    ],
                  ),
                ),
              )
            : Column(
                children: [
                  start,
                  const SizedBox(height: 10.0),
                  end,
                ],
              ));
  }
}
