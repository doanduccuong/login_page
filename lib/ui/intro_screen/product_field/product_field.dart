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
      // child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 4,children: [
      //   BuildCard(salePriceText: "sdsd", priceText: "dsds", supportingText: "dsds", cardImages: AppImage.imgMotorola),
      //   BuildCard(salePriceText: "sdsd", priceText: "dsds", supportingText: "dsds", cardImages: AppImage.imgMotorola),
      // ],)
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: Constants.card.length - 2,
            itemBuilder: (context, index) {
              return BuildCard(
                  salePriceText: Constants.card[index].salePriceText,
                  priceText: Constants.card[index].priceText,
                  supportingText: Constants.card[index].supportingText,
                  cardImages: Constants.card[index].cardImages);
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: Constants.card.length - 2,
            itemBuilder: (context, index) {
              return BuildCard(
                  salePriceText: Constants.card[index+2].salePriceText,
                  priceText: Constants.card[index+2].priceText,
                  supportingText: Constants.card[index+2].supportingText,
                  cardImages: Constants.card[index+2].cardImages);
            },
          ),
        ],
      ),
    );
  }
}
