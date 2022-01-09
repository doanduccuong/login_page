import 'package:flutter/material.dart';
import 'package:login_page/config/build_card/build_card.dart';
class ProducField extends StatelessWidget {
  const ProducField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        children: [
          BuildCard(),
          BuildCard(),
          BuildCard(),
          BuildCard(),
        ],
      ),

    );
  }
}