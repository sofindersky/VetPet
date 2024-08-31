import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';

class SettingsScreenNavigationItem extends StatefulWidget {
  const SettingsScreenNavigationItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  State<SettingsScreenNavigationItem> createState() =>
      _SettingsScreenNavigationItemState();
}

class _SettingsScreenNavigationItemState
    extends State<SettingsScreenNavigationItem> {
  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: ColoredBox(
        color: widget.isSelected ? CustomColors.babyBlue : Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: widget.isSelected ? s14w400beige : s14w400black,
              ).expanded(),
            ],
          ),
        ),
      ),
    );
  }
}
