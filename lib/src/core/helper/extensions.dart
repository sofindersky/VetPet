import 'package:flutter/material.dart';

extension ExpandedExtensions on Widget {
  Widget expanded({int flex = 1}) => Expanded(flex: flex, child: this);
}
