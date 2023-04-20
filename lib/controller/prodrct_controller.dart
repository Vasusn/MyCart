import 'package:emart_app/models/catagory_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var subcat = [];
  getSubCategories(title) async {
    var data = await rootBundle.loadString('lib/services/catrgory_model.json');
    var decoded = categoryModelFromJson(data);
    var s =
        decoded.categories.where((element) => element.name == title).toList();

    for (var e in s[0].subcategory) {
      subcat.add(e);
    }
  }
}
