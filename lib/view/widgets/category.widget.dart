import 'package:flutter/material.dart';

import '../../model/food_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 236, 236, 236),
                ),
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      FoodModel.foodList[index].image,
                      fit: BoxFit.cover,
                    )),
              ),
              Text(
                FoodModel.foodList[index].name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: FoodModel.foodList.length,
      ),
    );
  }
}
