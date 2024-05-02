import 'package:flutter/material.dart';
import 'package:food_app/screen/vegetable_listing_screen.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VegetableListingScreen(),
            ),
          );
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: const BorderSide(
                  color: Colors.white,
                ),
              ),
            )),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get Started",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 25.0,
            )
          ],
        ),
      ),
    );
  }
}
