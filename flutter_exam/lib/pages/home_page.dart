import 'package:flutter/material.dart';
import 'package:flutter_exam/components/app_bar.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../components/s_text_field.dart';
import '../models/data.dart';
import 'food_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappBar,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const Center(
            child: STextField(),
          ),
          const SizedBox(
            height: 12,
          ),
          ImageSlideshow(
            height: 134,
            children: [
              Image.asset(
                'assets/89-891331_fast-food-png-image-taco-bell-tacos.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/182-1823649_taco-bell-usa-food-png-transparent-png.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/Taco-Food-PNG-HD-Quality.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              'Chefz Nearby You',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          for (int i = 0; i < Data.foods.length; i++)
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (
                          context,
                        ) {
                          return FoodDetailPage(
                            food: Data.foods[i].food,
                          );
                        },
                      ),
                    );
                  },
                  child: Data.foods[i]),
            ),
        ],
      ),
    );
  }
}
