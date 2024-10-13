import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:pet_vet_project/src/common_widgets/main_app_bar.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/features/owner/presentation/owners_controller.dart';
import 'package:pet_vet_project/src/features/owner/presentation/widgets/owners_screen_header_row.dart';
import 'package:pet_vet_project/src/features/owner/presentation/widgets/owners_screen_row.dart';

class OwnersScreen extends ConsumerWidget {
  const OwnersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ownersList = ref.watch(ownersControllerProvider);
    return Scaffold(
      appBar: MainAppBar(
        title: context.tr.owners,
        onPressed: () => context.pop(),
      ),
      body: Column(
        children: [
          OwnerScreenHeaderRow(),
          ownersList
              .when(
                data: (data) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 8),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final owner = data[index];
                        return OwnersScreenRow(
                          onPhoneTap: () => _makePhoneCall(
                            owner.phoneNumber,
                          ),
                          owner: owner,
                        );
                      },
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) {
                  return Center(child: Text('Error: $error'));
                },
              )
              .expanded(),
        ],
      ),
    );
  }

  Future<void> _makePhoneCall(String phone) async {
    final Uri url = Uri(scheme: 'tel', path: phone);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
