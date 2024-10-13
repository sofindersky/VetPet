import 'package:flutter/material.dart';

import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/core/style/custom_text_styles.dart';
import 'package:pet_vet_project/src/features/owner/domain/owner_model.dart';

class OwnersScreenRow extends StatelessWidget {
  const OwnersScreenRow({
    super.key,
    required this.owner,
    required this.onPhoneTap,
  });
  final Owner owner;
  final VoidCallback onPhoneTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Spacer(),
            Text(owner.fullName, style: AppTextStyles(context).s16w400black)
                .expanded(),
            GestureDetector(
              onTap: onPhoneTap,
              child: Text(owner.phoneNumber,
                  style: AppTextStyles(context).s16w400black,),
            ).expanded(),
            Text(owner.email, style: AppTextStyles(context).s16w400black)
                .expanded(flex: 2),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
