import 'package:flutter/material.dart';
import 'package:flutter1/core/design/app_bar.dart';
class AppInfoView extends StatelessWidget {
  final String title;
  const AppInfoView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        text: title,
      ),
    );
  }
}
