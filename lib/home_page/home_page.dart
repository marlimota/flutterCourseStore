import 'package:flutter/material.dart';
import 'package:flutter_application/constants/breakpoints.dart';
import 'package:flutter_application/constants/colors.dart';
import 'package:flutter_application/home_page/widgets/app_bar/mobile_app_bar.dart';
import 'package:flutter_application/home_page/widgets/app_bar/web_app_bar.dart';
import 'package:flutter_application/home_page/widgets/sections/advantages_section.dart';
import 'package:flutter_application/home_page/widgets/sections/courses_section.dart';
import 'package:flutter_application/home_page/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: primaryColor,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 54),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 70), child: WebAppBar()),
          drawer:
              constraints.maxWidth <= mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [
                  TopSection(),
                  SizedBox(height: 12),
                  AdvantagesSection(),
                  SizedBox(height: 12),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
