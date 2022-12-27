// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:store_api_flutter_course/models/categories_model.dart';

class ProductsModel with ChangeNotifier {
  int? id;
  String? title;
  int? price;
  String? description;
  CategoriesModel? category;
  List<String>? images;

  ProductsModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.images});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'] != null
        ? CategoriesModel.fromJson(json['category'])
        : null;
    images = json['images'].cast<String>();
  }
  static List<ProductsModel> productsFromSnapshot(List productSnapshot) {
    //print("data ${productSnapshot[0]}");
    return productSnapshot.map((data) {
      return ProductsModel.fromJson(data);
    }).toList();
  }
}
