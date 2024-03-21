import 'package:auto_size_text/auto_size_text.dart';
import 'package:excer1/models/meals.dart';
import 'package:flutter/material.dart';

class MealCards extends StatelessWidget {
  final Meals meal;
  const MealCards({ super.key, required this.meal });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      borderOnForeground: true,    
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(
              width: MediaQuery.of(context).size.width*0.35,
              image: NetworkImage(meal.mealImage),
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10,),          
            AutoSizeText(meal.mealName,
              style: const TextStyle(fontSize: 20),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10,),          
          ],
        ),
      ),
    );
  }
}