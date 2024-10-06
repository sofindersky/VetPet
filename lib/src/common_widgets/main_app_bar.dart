import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.icon,
  });

  final String title;
  final Color? backgroundColor;
  final Icon? icon;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final appBarColor = Theme.of(context).appBarTheme.backgroundColor;
    return AppBar(
      backgroundColor: backgroundColor ?? appBarColor,
      automaticallyImplyLeading: false,
      title: TitleRow(
        title: title,
        onPressed: onPressed,
        icon: icon ?? const Icon(Icons.arrow_back),
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40.0);
}

class TitleRow extends StatelessWidget {
  const TitleRow({
    super.key,
    required this.title,
    required this.onPressed,
    required this.icon,
  });
  final String title;
  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles(context).appBarTitle,
        ),
        IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
