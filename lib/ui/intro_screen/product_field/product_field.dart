import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/config/build_card/build_card.dart';
import 'package:login_page/config/constants.dart';

class ProducField extends StatelessWidget {
  const ProducField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: Constants.card.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return BuildCard(
                  salePriceText: Constants.card[index].salePriceText,
                  priceText: Constants.card[index].priceText,
                  supportingText: Constants.card[index].supportingText,
                  cardImages: Constants.card[index].cardImages);
            }));
  }
}
