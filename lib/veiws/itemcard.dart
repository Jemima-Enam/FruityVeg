import 'package:flutter/material.dart';
import 'package:fruityveg/veiws/desccription.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const Description())));
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          // width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(blurRadius: 5),
            ],
          ),
          child: Row(children: [
            Image.asset(
              'assets/avocado.jpg',
              height: 200,
              width: 150,
              fit: BoxFit.cover,
            ),
            // ModalBarrier(color: Color.fromRGBO(5, 5, 5, 0.4))
            SizedBox(height: 20),
            Column(
              children: [
                SizedBox(height: 20, width: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text(
                    'Avocado',
                    style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                  ),
                ),
                // SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Text(
                    'Persea Americana',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),
                Text('Category : Fruit',
                    style: TextStyle(color: Color(0xffbcba4b), fontSize: 15))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
