// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:food_delivery_app/shared/theme.dart';

import '../widgets/inchWidget.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 21,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 30.0,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                        color: Color(0xffEB5757),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Melting Cheese",
                  style: blacktextStyle.copyWith(
                    fontSize: 21.0,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '\$ ',
                    style: pinkRedTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '9.47',
                          style: blacktextStyle.copyWith(
                            fontSize: 21.0,
                            fontWeight: medium,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(110.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400]!,
                        blurRadius: 30,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/pizza1.png",
                    width: 272.0,
                    height: 268.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: pinkRedColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(2.0),
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/icon_minus.png",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "2",
                      style: blacktextStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 20,
                        height: 20,
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text("\$19.34", style: grey2textStyle),
                const SizedBox(
                  height: 70.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InchWidget(
                      price: '6.44',
                      inch: 8,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 23,
                          width: 23,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: pinkRedColor,
                            ),
                            color: pinkRedColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                50.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "\$9.47",
                          style: greytextStyle.copyWith(
                            fontSize: 11.0,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "12 inch",
                          style: blacktextStyle.copyWith(
                            fontSize: 14.0,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                    InchWidget(
                      price: '15.32',
                      inch: 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReviewWidget(
                      image: "assets/images/icon_star.png",
                      name: '4.9',
                    ),
                    ReviewWidget(
                      image: "assets/images/icon_fire.png",
                      name: '44 Calories',
                    ),
                    ReviewWidget(
                      image: "assets/images/icon_clock.png",
                      name: '20 - 30 min',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Container(
                  width: 310,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [pinkRedColor, pinkRedColor.withOpacity(0.6)],
                    ),
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    child: Text(
                      'ADD TO CART',
                      style: whitetextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  final String image;
  final String name;
  const ReviewWidget({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 25.0,
          height: 25.0,
        ),
        const SizedBox(
          width: 2.0,
        ),
        Text(
          name,
          style: blacktextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
