import 'package:flutter/material.dart';
import 'package:flutter_exam/components/app_bar.dart';

import '../components/conteiner.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Profile',
              style: TextStyle(color: mainColor),
            ),
            const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 205, 126, 9),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: const Column(
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              color: Color.fromARGB(255, 205, 126, 9),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Conteiner(),
                Conteiner(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
