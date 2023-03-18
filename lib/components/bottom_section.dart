import 'package:flutter/material.dart';
import 'package:ninebot_app/components/card.dart';
import 'package:ninebot_app/models/card_model.dart';
import 'package:ninebot_app/utils/styles.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<BndCard> cards = [
      BndCard('assets/images/card-1.png', 'Front LED Light', 99.00),
      BndCard('assets/images/card-2.png', 'Aerodynamic Rare Wing', 129.00),
      BndCard('assets/images/card-3.png', 'Metal Pedals', 49.00),
      BndCard('assets/images/card-4.png', 'Rear Wing', 100.00),
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 52),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Extra Bundle Included', style: h2),
          const SizedBox(height: 13),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: cards.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                var card = cards[index];

                return BundleCard(
                    image: card.image, name: card.name, price: card.price);
              },
            ),
          )
        ],
      ),
    );
  }
}
