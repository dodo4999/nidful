import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 500,
      height: 400.0,
      child: Expanded(
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: 100,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              color: Colors.red,
            );
          },
          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        ),
      ),
    );
  }
}
