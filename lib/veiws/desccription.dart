import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/misc/navigation_helpers.dart';
import 'package:scroll_navigation/navigation/title_scroll_navigation.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image:
                      DecorationImage(image: AssetImage('assets/avocado.jpg')),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                children: [
                  Image.asset(
                    'assets/avocado.jpg',
                    height: 320,
                    width: 320,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Avocado',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Persea Americana',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TitleScrollNavigation(
                    barStyle: TitleNavigationBarStyle(
                      activeColor: Colors.black,
                      deactiveColor: Colors.grey,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      spaceBetween: 40,
                    ),
                    titles: [
                      "Description",
                      "Uses ",
                      "Health",
                      "Climate",
                      "Soil ",
                    ],
                    pages: [
                      Container(
                          child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras imperdiet odio at enim facilisis, nec dictum est efficitur. Morbi vestibulum diam eget magna interdum suscipit. Quisque ac maximus dolor. Vestibulum eget hendrerit metus. Suspendisse risus diam, porttitor venenatis purus ut, vestibulum blandit orci. Phasellus ullamcorper purus elit. Nulla pretium nunc non diam pretium, ut cursus libero fringilla.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      )),
                      Container(color: Colors.red[50]),
                      Container(color: Colors.green[50]),
                      Container(color: Colors.purple[50]),
                      Container(color: Colors.yellow[50]),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
