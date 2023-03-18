import 'package:flutter/material.dart';
import 'package:ninebot_app/utils/styles.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 473,
      height: 54,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 54,
              width: 170,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [accentDark, accent],
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text('Add to cart', style: p4),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.shopping_basket_outlined,
                      color: accentText,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: bgIcon,
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    color: Color.fromRGBO(0, 0, 0, 0.40),
                  )
                ],
              ),
              height: 40,
              width: 40,
              child:
                  Icon(Icons.favorite_border_outlined, color: text, size: 20),
            ),
          ],
        ),
      ),
    );
  }
}
