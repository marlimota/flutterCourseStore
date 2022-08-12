import 'package:flutter/material.dart';
import 'package:flutter_application/home_page/widgets/custom_search_field.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: [
            const Expanded(
              child: CustomSearchField(),
            ),
            if (constraints.maxWidth >= 400) ...[
              const SizedBox(width: 32),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Aprender',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            if (constraints.maxWidth >= 500) ...[
              const SizedBox(width: 24),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Flutter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ],
        );
      },
    ));
  }
}
