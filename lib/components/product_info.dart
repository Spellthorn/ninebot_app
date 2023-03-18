import 'package:flutter/material.dart';
import 'package:ninebot_app/utils/styles.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('In Stock', style: p2),
          Text('Ninebot Gokart Pro', style: h1),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('USD ', style: p3),
              Text('2,199.00', style: p5),
            ],
          )
        ],
      ),
    );
  }
}
