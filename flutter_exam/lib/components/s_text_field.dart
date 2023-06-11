import 'package:flutter/material.dart';

import 'app_bar.dart';

class STextField extends StatelessWidget {
  const STextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358,
      height: 48,
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: const OutlineInputBorder(),
          focusColor: mainColor,
          hintStyle: const TextStyle(color: Colors.grey),
          hintText: 'Search for Dishes, Restaurants',
          prefixIcon: const Icon(
            Icons.search,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          filled: true,
        ),
      ),
    );
  }
}
