// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/presentation/home/pages/item_page.dart';

import 'package:food_delivery_app/shared/theme.dart';

import '../widgets/menu_widget.dart';
import '../widgets/popular_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.view_headline_sharp,
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
                          Icons.search,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 63.0,
                ),
                Text(
                  "Hi Hafizh",
                  style: pinkRedTextStyle.copyWith(
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  "Find your Delicious Food",
                  style: blacktextStyle.copyWith(
                    fontSize: 21.0,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 28.0,
                ),
                Row(
                  children: [
                    MenuWidget(
                      image: 'assets/images/icon_burger.png',
                      name: 'Fast Food',
                    ),
                    const SizedBox(
                      width: 33.0,
                    ),
                    MenuWidget(
                      image: 'assets/images/icon_pizza.png',
                      name: 'Italian',
                    ),
                    const SizedBox(
                      width: 33.0,
                    ),
                    MenuWidget(
                      image: 'assets/images/icon_sushi.png',
                      name: 'Japanese',
                    ),
                    const SizedBox(
                      width: 33.0,
                    ),
                    MenuWidget(
                      image: 'assets/images/icon_lobster.png',
                      name: 'Sea Food',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70.0,
                ),
                Text(
                  "Popular",
                  style: blacktextStyle.copyWith(
                    fontSize: 21.0,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 28.0,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemPage(),
                          ),
                        );
                      },
                      child: PopularWidget(
                        name: 'Melting Cheese',
                        calories: 44,
                        image: 'assets/images/pizza1.png',
                        price: '9.47',
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    PopularWidget(
                      name: 'Pizza Capricciosa',
                      calories: 54,
                      image: 'assets/images/pizza2.png',
                      price: '12.55',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Container(
                    width: 78,
                    height: 78.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          pinkRedColor,
                          pinkRedColor.withOpacity(0.6),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          50.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Menu",
                        style: whitetextStyle.copyWith(
                          fontSize: 19.0,
                          fontWeight: medium,
                        ),
                      ),
                    ),
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
