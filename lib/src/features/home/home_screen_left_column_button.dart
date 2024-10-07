import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/helper/gaps.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';

class HomeScreenLeftColumnButton extends StatelessWidget {
  const HomeScreenLeftColumnButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
  });
  final VoidCallback onTap;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, size: 48, color: colorScheme.tertiary),
              gapW12,
              Text(text, style: AppTextStyles(context).s24w400black).expanded(),
            ],
          ),
        ),
      ),
    );
  }
}
