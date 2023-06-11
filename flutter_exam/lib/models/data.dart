import 'package:flutter_exam/models/food.dart';

import '../components/food_card.dart';

class Data {
  static List<FoodCard> foods = [
    FoodCard(
      food: Food(
          name: 'Forn Wa Saj',
          imagePath: 'assets/r3.jpg',
          brandPath: 'assets/logo.avif',
          km: '8.60 km',
          rate: '4.3',
          listFoods: ['Gathering Box', 'Halloumi pesto', 'Akkawi Mankousha'],
          state: 'Open',
          whenClose: 'Closes 11:59 PM',
          description: 'Breakfast, Bakery, Gathering.'),
    ),
    FoodCard(
        food: Food(
            name: 'Breddy',
            imagePath: 'assets/r2.avif',
            brandPath: 'assets/logo.avif',
            km: '5.67 km',
            rate: '4.9',
            listFoods: ['Whole Whheat', 'Toast'],
            state: 'Open',
            whenClose: 'Closes 10:00 PM',
            description: 'Bakary'))
  ];
}
