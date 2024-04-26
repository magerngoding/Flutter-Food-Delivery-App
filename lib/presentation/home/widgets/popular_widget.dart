import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class PopularWidget extends StatelessWidget {
  final String name;
  final int calories;
  final String image;
  final String price;

  const PopularWidget({
    Key? key,
    required this.name,
    required this.calories,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18),
      width: 162,
      height: 300.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            22.0,
          ),
        ),
      ),
      child: Column(
        children: [
          Text(
            name,
            style: blacktextStyle.copyWith(
              fontSize: 14.0,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/icon_fire.png",
                width: 13.0,
                height: 13.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                '${calories.toString()}Calories',
                style: pinkRedTextStyle.copyWith(
                  fontSize: 11.0,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18.0,
          ),
          Image.asset(
            image,
            width: 120.0,
            height: 120.0,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 15.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: '\$',
              style: TextStyle(
                fontWeight: semiBold,
                color: Color(0xffEB5757),
              ),
              children: <TextSpan>[
                TextSpan(
                    text: price.toString(),
                    style: blacktextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16.0,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Container(
            width: 17,
            height: 17,
            decoration: BoxDecoration(
              color: pinkRedColor,
              borderRadius: BorderRadius.all(
                Radius.circular(2.0),
              ),
            ),
            child: Image.asset(
              "assets/images/icon_plus.png",
            ),
          ),
        ],
      ),
    );
  }
}
