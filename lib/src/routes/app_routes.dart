import 'package:go_router/go_router.dart';
import 'package:pet_vet_project/src/features/home/home_screen.dart';
import 'package:pet_vet_project/src/features/pet/pet_details_screen.dart';
import 'package:pet_vet_project/src/features/pets/presentation/pets_list_screen.dart';

enum AppRoutes {
  home,
  petList,
  petDetails,
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
          routes: [
            GoRoute(
              name: AppRoutes.petDetails.name,
              path: 'pet-details/:id',
              builder: (context, state) {
                final id = state.pathParameters['id']!;
                final extra = state.extra as Map<String, dynamic>?;
                final petName = extra?['petName'] ?? '';
                return PetDetailsScreen(id: id, petName: petName);
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
