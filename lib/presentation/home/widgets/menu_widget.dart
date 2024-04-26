import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class MenuWidget extends StatelessWidget {
  final String image;
  final String name;
  const MenuWidget({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Image.asset(
            image,
            width: 33.0,
            height: 33.0,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          name,
          style: blacktextStyle.copyWith(
            fontSize: 12.0,
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}
