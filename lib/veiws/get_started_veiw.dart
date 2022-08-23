import 'package:flutter/material.dart';
import 'package:fruityveg/all.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/veggie.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        ModalBarrier(color: Color.fromRGBO(5, 5, 5, 0.4)),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 10.0),
            child: Column(
              children: [
                SizedBox(height: 200),
                Text(
                  'FruityVeg',
                  style: GoogleFonts.eagleLake(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 80),
                Text(
                  'Get all the infomation  you need about any fruit or vegetables',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(height: 80),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const All()),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.only(left: 80, right: 80),
                        backgroundColor: Colors.green))
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
