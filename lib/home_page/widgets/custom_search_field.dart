import 'package:flutter/material.dart';
import 'package:flutter_application/constants/colors.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(233, 255, 254, 254),
        border: Border.all(color: const Color.fromARGB(178, 254, 253, 253)),
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 56, 55, 55),
            ),
          ),
          const Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: TextStyle(
                  color: primaryColor, fontFamily: 'cocogoose', fontSize: 12),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Encontre um curso',
                isCollapsed: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
