import 'package:flutter/material.dart';
import 'package:nid/detail_page.dart';
import 'package:nid/models/product_models.dart';

class Productwidget extends StatelessWidget {
  final ProductModel? model;

  const Productwidget({Key? key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var url = 'http://10.0.2.2:8000/product_images/';
    var img = url + model!.productImage!;
    return Container(
      color: Colors.white,
      width: 171.0,
      height: 265.0,
      child: Column(
        children: [
          Image.network(
            img,
            height: 100,
            width: 265,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model!.productName!,
                  style: TextStyle(
                    fontSize: 14.0,
                    // color: Colors.grey[500],
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  width: 40,
                  height: 20,
                  child: Center(
                    child: Text(
                      'Used',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                model!.price!.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 21.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ),
              );
            },
            child: Text('Continue'),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              minimumSize: const Size(500, 50),
              maximumSize: const Size(500, 50),
            ),
          ),
        ],
      ),
    );
  }
}
