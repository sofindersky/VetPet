import 'package:flutter/material.dart';
import 'package:pet_vet_project/src/core/style/text_style.dart';

import '../core/style/colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.softMintGreen,
      automaticallyImplyLeading: false,
      title: TitleRow(title: title, onPressed: onPressed),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40.0);
}

class TitleRow extends StatelessWidget {
  const TitleRow({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: appBarTitle),
        IconButton(
          icon: const Icon(Icons.turn_left_sharp),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
