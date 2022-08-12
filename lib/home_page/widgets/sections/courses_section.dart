import 'package:flutter/material.dart';
import 'package:flutter_application/constants/breakpoints.dart';
import 'package:flutter_application/home_page/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 320,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: 21,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
              vertical: 14,
              horizontal: constraints.maxWidth >= webBreakpoint ? 0 : 16),
          itemBuilder: (context, index) {
            return const CourseItem();
          },
        );
      },
    );
  }
}
