import 'package:flutter/material.dart';
import 'package:fruityveg/veiws/allview.dart';

import 'package:fruityveg/veiws/itemcard.dart';
import 'package:fruityveg/veiws/nutview.dart';
import 'package:fruityveg/veiws/vegetable.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'FruityVeg',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        automaticallyImplyLeading: false,
        actions: [Icon(Icons.search)],
      ),
      body: TitleScrollNavigation(
        barStyle: TitleNavigationBarStyle(
          activeColor: Colors.black,
          deactiveColor: Colors.grey,
          style: TextStyle(fontWeight: FontWeight.bold),
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          spaceBetween: 40,
        ),
        titles: [
          "All",
          "Fruit",
          "Vegetables",
          "Herbs and Spice",
          "Nuts ",
        ],
        pages: [
          ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 25,
                );
              },
              itemCount: 6,
              itemBuilder: ((context, index) {
                return ItemCard();
              })),
          VegetableView(),
          NutView(),
          Container(color: Colors.red[50]),
          Container(color: Colors.green[50]),
        ],
      ),
    );
  }
}
