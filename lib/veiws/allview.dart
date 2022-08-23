import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruityveg/veiws/itemcard.dart';

class AllView extends StatelessWidget {
  const AllView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 25,
              );
            },
            itemCount: 6,
            itemBuilder: ((context, index) {
              return ItemCard();
            })));
  }
}
