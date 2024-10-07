import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_vet_project/src/app.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/pet_icons_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      child: PetIconsProvider(child: const MyApp()),
    ),
  );
}
