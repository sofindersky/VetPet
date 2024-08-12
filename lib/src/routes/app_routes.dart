import 'package:go_router/go_router.dart';
import 'package:pet_vet_project/src/features/home/home_screen.dart';
import 'package:pet_vet_project/src/features/pets/presentation/pets_list_screen.dart';

enum AppRoutes {
  home,
  petList,
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: AppRoutes.home.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          name: AppRoutes.petList.name,
          path: 'pet-list',
          builder: (context, state) => const PetsListScreen(),
        ),
      ],
    ),
  ],
);
