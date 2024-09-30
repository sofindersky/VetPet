import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_vet_project/src/common_widgets/main_app_bar.dart';
import 'package:pet_vet_project/src/common_widgets/two_column_layout.dart';
import 'package:pet_vet_project/src/core/helper/extensions.dart';
import 'package:pet_vet_project/src/features/settings/presentation/settings_about.dart';
import 'package:pet_vet_project/src/features/settings/presentation/settings_general.dart';
import 'package:pet_vet_project/src/features/settings/presentation/widgets/settings_screen_navigation_item.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 0;
  Locale? _currentLocale;
  final List<Widget> _listOfPages = [
    SettingsGeneral(),
    SettingsAbout(),
  ];
  void _selectPage(final int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final newLocale = Localizations.localeOf(context);
    if (_currentLocale != newLocale) {
      setState(() {
        _currentLocale = newLocale;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    /// We put here the list of pages that we want to display in the build method because of the localization

    final List<String> _pages = [
      context.tr.general_settings,
      context.tr.about,
    ];

    return Scaffold(
      appBar: MainAppBar(
        title: context.tr.settings,
        onPressed: () => context.pop(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TwoColumnLayout(
          startFlex: 3,
          endFlex: 7,
          start: ListView(
            shrinkWrap: true,
            children: [
              for (int i = 0; i < _pages.length; i++)
                Column(
                  children: [
                    SettingsScreenNavigationItem(
                      title: _pages[i],
                      isSelected: _selectedIndex == i,
                      onTap: () {
                        _selectPage(i);
                      },
                    ),
                  ],
                ),
            ],
          ),
          end: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _listOfPages[_selectedIndex],
          ),
        ),
      ),
    );
  }
}
