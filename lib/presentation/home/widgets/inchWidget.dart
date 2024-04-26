import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class InchWidget extends StatelessWidget {
  final String price;
  final int inch;
  const InchWidget({
    Key? key,
    required this.price,
    required this.inch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 23.0,
          width: 23,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: greyColor,
            ),
            color: Colors.white,
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
          "\$${price}",
          style: greytextStyle.copyWith(
            fontSize: 11.0,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          "$inch inch",
          style: blacktextStyle.copyWith(
            fontSize: 14.0,
            fontWeight: light,
          ),
        ),
      ],
    );
  }
}
