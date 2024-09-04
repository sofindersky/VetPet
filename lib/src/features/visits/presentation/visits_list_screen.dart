import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_vet_project/src/common_widgets/main_app_bar.dart';

class VisitsListScreen extends StatelessWidget {
  const VisitsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Visits',
        onPressed: () {
          context.pop();
        },
      ),
      body: Placeholder(),
    );
  }
}
