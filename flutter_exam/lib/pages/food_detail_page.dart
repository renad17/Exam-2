import 'package:flutter/material.dart';
import 'package:flutter_exam/components/app_bar.dart';
import '../models/food.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key, required this.food});
  final Food food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Image(
          image: AssetImage(food.imagePath),
          fit: BoxFit.cover,
        ),
        title: Row(
          children: [
            const SizedBox(
              width: 68,
            ),
            Text(food.name),
            const SizedBox(
              width: 68,
            ),
            const Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.ios_share_rounded),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                child: CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(food.brandPath),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 16, 0),
                child: Icon(
                  Icons.favorite_border,
                  color: Color.fromARGB(171, 0, 0, 0),
                  size: 30,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 6, 0, 0),
            child: Text(
              food.name,
              style: TextStyle(
                  color: mainColor, fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 6, 0, 0),
            child: Text(
              food.description,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Row(
              children: [
                Text(
                  food.state,
                  style: const TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(food.whenClose),
                const SizedBox(
                  width: 162,
                ),
                const Icon(
                  Icons.star_purple500_sharp,
                  color: Color.fromARGB(255, 236, 219, 96),
                ),
                Text(
                  food.rate,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 1.5,
            width: 372,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: const Color.fromARGB(255, 253, 253, 253),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Popular',
                  style: TextStyle(color: mainColor, fontSize: 16),
                ),
                Text(
                  'Gathering',
                  style: TextStyle(color: mainColor, fontSize: 16),
                ),
                Text(
                  'Manakeesh',
                  style: TextStyle(color: mainColor, fontSize: 16),
                ),
              ],
            ),
          ),
          for (int i = 0; i < food.listFoods.length; i++)
            InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 112,
                      width: 354,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 196, 194, 194),
                              blurRadius: 5),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 32, 0, 0),
                        child: Container(
                          height: 86,
                          width: 88,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 226, 201, 210),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 0, 0, 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              food.listFoods[i],
                              style: TextStyle(color: mainColor, fontSize: 16),
                            ),
                            const Row(
                              children: [
                                Text('Price :'),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('87.0 SR'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
