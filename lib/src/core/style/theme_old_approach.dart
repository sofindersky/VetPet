// import 'package:flutter/material.dart';
// import 'package:pet_vet_project/src/core/style/colors.dart';

// class CTheme {
//   static final ThemeData _base = ThemeData.light(
//     useMaterial3: true,
//   );
//   static final ThemeData theme = _base.copyWith(
//     scaffoldBackgroundColor: Colors.white,
//     checkboxTheme: customCheckBoxTheme,
//     colorScheme: _base.colorScheme.copyWith(
//       primary: CustomColors.beige,
//       onPrimary: Colors.white,
//       secondary: CustomColors.babyBlue,
//     ),
//     floatingActionButtonTheme: fabTheme,
//     cardTheme: _base.cardTheme.copyWith(
//       color: CustomColors.softMintGreen,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//     ),
//   );

//   static final FloatingActionButtonThemeData fabTheme =
//       FloatingActionButtonThemeData(
//     shape: RoundedRectangleBorder(
//       side: BorderSide(
//         color: CustomColors.black,
//         width: 1.0,
//       ),
//       borderRadius: BorderRadius.circular(12.0),
//     ),
//     backgroundColor: CustomColors.babyBlue,
//     foregroundColor: CustomColors.black,
//   );

//   static final CheckboxThemeData customCheckBoxTheme = CheckboxThemeData(
//     fillColor: WidgetStateProperty.resolveWith<Color?>(
//       (Set states) => states.contains(WidgetState.selected)
//           ? CustomColors.beige
//           : CustomColors.darkBeige,
//     ),
//     side: WidgetStateBorderSide.resolveWith(
//       (Set states) => const BorderSide(
//         color: Colors.white,
//         width: 1.0,
//       ),
//     ),
//   );
// }
