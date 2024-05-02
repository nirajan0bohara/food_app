import 'package:flutter/material.dart';
import 'package:food_app/model/vegetable_model.dart';
import 'package:food_app/widget/vegetable_detail_tile.dart';

class VegetableDetailsScreen extends StatelessWidget {
  const VegetableDetailsScreen({super.key, required this.vegetable});
  final Vegetable vegetable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: vegetable.gradientColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 35.0),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Image.asset("asset/${vegetable.image}.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Text(
                vegetable.title,
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: vegetable.gradientColors[1]),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Text(
                vegetable.headline,
                style: TextStyle(
                  fontSize: 14.0,
                  color: vegetable.gradientColors[1],
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: VegetableDetailsTile(
                vegetable: vegetable,
              ),
            ),
            //expansion tile to show nutrients
            const SizedBox(height: 30.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Text(
                vegetable.description,
                style: TextStyle(
                  fontSize: 12.0,
                  color: vegetable.gradientColors[1],
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
