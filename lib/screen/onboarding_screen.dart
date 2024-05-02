import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/widget/start_button_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

int currentPage = 0;

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    colors: vegetables[index].gradientColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //image of vegetable
                    Image.asset("asset/${vegetables[index].image}.png"),
                    const SizedBox(
                      height: 30,
                    ),
                    //name of vegetable
                    Text(
                      vegetables[index].title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          shadows: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              blurRadius: 3,
                              offset: Offset(2, 2),
                            ),
                          ],
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //headline/tagline of vegetable
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        vegetables[index].headline,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    //get start button
                    currentPage == 3 ? const StartButton() : Container(),
                    currentPage == 3
                        ? const SizedBox(
                            height: 20.0,
                          )
                        : Container(),
                    //page indicator
                    buildPageIndicator(),
                  ],
                ),
              ),
            );
          },
          onPageChanged: (int page) {
            setState(() {
              currentPage = page;
            });
          },
        ),
      ),
    );
  }
}

Widget buildPageIndicator() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List<Widget>.generate(
      4,
      (index) {
        return Container(
          width: 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? Colors.white : Colors.grey.shade600,
          ),
        );
      },
    ),
  );
}
