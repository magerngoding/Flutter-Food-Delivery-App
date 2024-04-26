// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_delivery_app/shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pinkRedColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/background_people.png",
                  width: 360.0,
                  height: 500.0,
                  fit: BoxFit.fill,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        26.0,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 41,
                      horizontal: 50,
                    ),
                    child: Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Quick Delivery at\nyour ',
                            style: blacktextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Doorstep',
                                style: TextStyle(
                                  fontWeight: semiBold,
                                  color: Color(0xffEB5757),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 11.0,
                        ),
                        Text(
                          "Home delivery and onlione reservation\n system for retaurants and cafe",
                          style: greytextStyle.copyWith(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                pinkRedColor,
                                pinkRedColor.withOpacity(0.6)
                              ],
                            ),
                          ),
                          child: MaterialButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            child: Text(
                              'Get Started',
                              style: whitetextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 18,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
