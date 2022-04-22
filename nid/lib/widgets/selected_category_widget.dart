import 'package:flutter/material.dart';
import 'package:nid/models/category_controller.dart';

class SelectedCategoryWidget extends StatefulWidget {
  final CategoryModel? category;
  bool? isSelected;

  SelectedCategoryWidget({Key? key, this.category}) : super(key: key);
  @override
  State<SelectedCategoryWidget> createState() => _SelectedCategoryWidgetState();
}

class _SelectedCategoryWidgetState extends State<SelectedCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // width: 60,
        // height: 30,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.category!.name!,
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.deepPurple,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}
