// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.id,
    this.userId,
    this.categoryId,
    this.quantity,
    this.price,
    this.productCondition,
    this.description,
    this.productImage,
    this.createdAt,
    this.updatedAt,
    this.productName,
  });

  int? id;
  int? userId;
  int? categoryId;
  int? quantity;
  int? price;
  String? productCondition;
  String? description;
  String? productImage;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? productName;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        userId: json["user_id"],
        categoryId: json["category_id"],
        quantity: json["quantity"],
        price: json["price"],
        productCondition: json["product_condition"],
        description: json["description"],
        productImage: json["product_image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productName: json["product_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "category_id": categoryId,
        "quantity": quantity,
        "price": price,
        "product_condition": productCondition,
        "description": description,
        "product_image": productImage,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "product_name": productName,
      };
}
