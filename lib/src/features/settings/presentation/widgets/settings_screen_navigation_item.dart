import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/color_extension.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';

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
    final color = Theme.of(context).extension<ColorExtension>()?.babyBlue;
    return GestureDetector(
      onTap: widget.onTap,
      child: ColoredBox(
        color: widget.isSelected ? color! : Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: widget.isSelected
                    ? AppTextStyles(context).s14w400beige
                    : AppTextStyles(context).s14w400black,
              ).expanded(),
            ],
          ),
        ),
      ),
    );
  }
}
