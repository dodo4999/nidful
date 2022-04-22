// ignore_for_file: prefer_const_constructors

import 'package:animated_shimmer/animated_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:nid/controller/category_controller.dart';
import 'package:nid/controller/product_controller.dart';
import 'package:nid/detail_page.dart';
import 'package:nid/widgets/product_widget.dart';
import 'package:nid/widgets/selected_category_widget.dart';

class HomeExplore extends StatefulWidget {
  const HomeExplore({Key? key}) : super(key: key);

  @override
  State<HomeExplore> createState() => _HomeExploreState();
}

class _HomeExploreState extends State<HomeExplore> {
  void initState() {
    super.initState();
    _productController.getProductList();
    _categoryController.getCategoryList();
  }

  final ProductController _productController = Get.put(ProductController());
  final CategoryController _categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/logo1.png'),
                Container(
                  width: 60,
                  height: 30,
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 20,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300.0,
                  // color: Colors.white,
                  child: new TextField(
                    decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.0),
                      prefixIcon: Icon(Icons.search),
                      labelText: "",
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Icon(Icons.settings)
              ],
            ),
            SizedBox(height: 20.0),
            Center(child: Image.asset('assets/Frame 16.png')),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey[500],
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[500],
                        size: 10.0,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Obx(() {
              final snapshot = _categoryController.categories.value;
              return _categoryController.isLoading.value
                  ? Center(
                      child: AnimatedShimmer(
                        height: 10,
                        width: 120,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        delayInMilliSeconds: Duration(milliseconds: 1 * 500),
                      ),
                    )
                  : Container(
                      height: 50,
                      width: double.infinity,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SelectedCategoryWidget(
                            category: snapshot[index],
                          );
                        },
                      ),
                    );
            }),
            SizedBox(height: 20.0),
            // check loading state

            RefreshIndicator(
              onRefresh: () async {
                _productController.getProductList();
              },
              child: Obx(() {
                final snapshot = _productController.products.value;
                return _productController.isLoading.value
                    ? AnimatedShimmer(
                        height: 10,
                        width: 120,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        delayInMilliSeconds: Duration(milliseconds: 1 * 500),
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0),
                        itemBuilder: (BuildContext context, int index) {
                          return SingleChildScrollView(
                            child: Productwidget(
                              model: snapshot[index],
                            ),
                          );
                        },
                      );
              }),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}


// Text(
//                 'Electronics',
//                 style: TextStyle(color: Colors.grey[500]),
//               ),

