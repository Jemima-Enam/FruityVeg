import 'package:flutter/material.dart';
import 'package:fruityveg/veiws/itemcard.dart';

class VegetableView extends StatelessWidget {
  const VegetableView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 25,
          );
        },
        itemCount: 6,
        itemBuilder: ((context, index) {
          return ItemCard();
        }));
  }
}
