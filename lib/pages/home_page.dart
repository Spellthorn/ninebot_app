import 'package:flutter/material.dart';
import 'package:ninebot_app/components/bottom_section.dart';
import 'package:ninebot_app/components/middle_section.dart';
import 'package:ninebot_app/components/top_section.dart';
import 'package:ninebot_app/utils/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDark,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: const [
                TopSection(),
                BottomSection(),
              ],
            ),
            const MiddleSection()
          ],
        ),
      ),
    );
  }
}
