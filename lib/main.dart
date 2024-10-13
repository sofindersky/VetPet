import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pet_vet_project/firebase_options.dart';
import 'package:pet_vet_project/src/app.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/pet_icons_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ProviderScope(
      child: PetIconsProvider(child: const MyApp()),
    ),
  );
}
