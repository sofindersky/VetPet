import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';

class HomeScreenLeftColumnButton extends StatelessWidget {
  const HomeScreenLeftColumnButton(
      {super.key, required this.onTap, required this.text, required this.icon});
  final VoidCallback onTap;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: CustomColors.darkBeige, width: 2),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, size: 48, color: CustomColors.softPink),
              const SizedBox(
                width: 12,
              ),
              Text(text, style: s24w400black).expanded(),
            ],
          ),
        ),
      ),
    );
  }
}
