import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color.fromARGB(245, 247, 245, 245).withOpacity(0.1),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          'assets/images/image2.jpg',
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 8,
        ),
        Flexible(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const AutoSizeText(
                'Criação de Apps Android e IOS com Flutter!',
                minFontSize: 3,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'cocogoose'),
              );
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Feito com ♥ por Marli Mota',
          style: TextStyle(
              fontSize: 8, color: Colors.grey, fontFamily: 'cocogoose'),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'R\$ 22,90',
          style: TextStyle(
              fontSize: 9.5, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
