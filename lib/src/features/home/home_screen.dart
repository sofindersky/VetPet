import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_vet_project/src/common_widgets/main_app_bar.dart';
import 'package:pet_vet_project/src/common_widgets/two_column_layout.dart';
import 'package:pet_vet_project/src/core/helper/gaps.dart';
import 'package:pet_vet_project/src/core/helper/images.dart';
import 'package:pet_vet_project/src/core/style/colors.dart';

import 'package:pet_vet_project/src/features/home/home_screen_left_column_button.dart';
import 'package:pet_vet_project/src/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeScreenBody());
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('CURRENT LOCALE: ${context.locale}');
    final width = MediaQuery.sizeOf(context).width;
    final double avatarSize = width >= 600 ? width : width * 0.25;
    return Scaffold(
      appBar: MainAppBar(
        icon: const Icon(Icons.settings, color: CustomColors.black),
        title: '',
        onPressed: () {
          //Lesson14: Usage of the goNamed
          context.goNamed(AppRoutes.settings.name);
        },
      ),
      backgroundColor: CustomColors.beige,
      body: TwoColumnLayout(
        start: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: avatarSize,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                AppImage.logo,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        end: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                HomeScreenLeftColumnButton(
                  onTap: () {
                    //Lesson14: Usage of the goNamed() method
                    // Note: This is not the only place in the app where context.goNamed() is used;
                    // see line 72 and 80;
                    context.goNamed(AppRoutes.petList.name);
                  },
                  text: tr('fluffy_patients'),
                  icon: Icons.pets,
                ),
                gapH8,
                HomeScreenLeftColumnButton(
                  onTap: () {
                    context.goNamed(AppRoutes.owners.name);
                  },
                  text: tr('owners'),
                  icon: Icons.person_pin_sharp,
                ),
                gapH8,
                HomeScreenLeftColumnButton(
                  onTap: () {
                    context.goNamed(AppRoutes.visits.name);
                  },
                  text: tr('visits'),
                  icon: Icons.calendar_today,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
