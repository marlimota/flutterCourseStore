import 'package:flutter/material.dart';
import 'package:flutter_application/constants/colors.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      backgroundColor: primaryColor,
      title: Row(
        children: [
          SizedBox(
            width: 26,
            child: Image.asset(
              'assets/images/flutter_logo.png',
              //fit: BoxFit.fitWidth,
              //scale: 0.1,
            ),
          ),
          const Text(
            'Flutter',
            style: TextStyle(fontFamily: 'cocogoose'),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
