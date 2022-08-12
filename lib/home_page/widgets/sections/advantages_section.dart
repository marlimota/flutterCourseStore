import 'package:flutter/material.dart';
import 'package:flutter_application/constants/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check,
                  color: Colors.green,
                  size: constraints.maxWidth >= mobileBreakpoint ? 50 : 32),
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'cocogoose',
                        fontSize: 11),
                  )
                ],
              ),
            ],
          );
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        runSpacing: 16,
        children: [
          buildAdvantage('+ 12.000', 'Formações completas'),
          buildAdvantage('+ 1.200', 'Empresas parceiras'),
          buildAdvantage('Nota 5', 'Reconhecido pelo MEC'),
        ],
      ),
    );
  }
}
