// ignore_for_file: avoid_print

import 'package:excer1/models/meals.dart';
import 'package:excer1/widgets/API%20widgets/meal_cards.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class NewsScreenWidget extends StatefulWidget {
  const NewsScreenWidget({super.key});

  @override
  State<NewsScreenWidget> createState() => _NewsScreenWidgetState();
}







class _NewsScreenWidgetState extends State<NewsScreenWidget> {
  List<Meals> meals = [];
  Future<void> loadData() async {
    var response = await http.get(Uri.parse("https://www.themealdb.com/api/json/v1/1/filter.php?c=Beef"));
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
      
      List<Meals> fromJson = [];
      for (var i = 0; i < jsonResponse['meals'].length; i++) {
        fromJson.add(Meals(i,jsonResponse['meals'][i]['strMeal'], jsonResponse['meals'][i]['strMealThumb']));
      }
      setState(() { meals = fromJson; });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: (MediaQuery.of(context).orientation == Orientation.portrait) ? 2 : 3),
            itemCount: meals.length,
            itemBuilder: (BuildContext context, index) { return MealCards(meal: meals[index]); }),
          ),
      ),
        // child: MealCards(meal: meal),
    );
  }
}