import 'package:flutter/material.dart';
import 'package:flutter_application/constants/colors.dart';
import 'package:flutter_application/home_page/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      toolbarHeight: 72,
      title: Row(
        children: [
          SizedBox(
            width: 30,
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
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          const SizedBox(width: 32),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 24),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                width: 1.5,
                color: Colors.white,
              ),
              minimumSize: const Size(88, 36),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
            child: const Text(
              'Fazer login',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, padding: const EdgeInsets.all(10)),
            child: const Text(
              'Cadastre-se',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
