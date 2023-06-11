import 'package:flutter/material.dart';
import 'package:flutter_exam/models/food.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.food});
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Container(
            height: 204,
            width: 372,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              image: DecorationImage(
                  image: AssetImage(food.imagePath), fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 138, 0, 0),
          child: Container(
            height: 68,
            width: 372,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: const Color.fromARGB(255, 253, 253, 253),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 144, 0, 0),
          child: CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage(food.brandPath),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(82, 148, 0, 0),
          child: Text(
            food.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // Image.asset(food.imagePath),
        Padding(
          padding: const EdgeInsets.fromLTRB(82, 168, 0, 0),
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                size: 20,
              ),
              Text(
                food.km,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 12,
              ),
              const Icon(
                Icons.star_purple500_sharp,
                color: Color.fromARGB(255, 193, 112, 139),
              ),
              Text(
                food.rate,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
