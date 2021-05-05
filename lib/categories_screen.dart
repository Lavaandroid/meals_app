import 'package:flutter/material.dart';
import './models/data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('Your meals'),),

      body: GridView(
        padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.id, catData.title, catData.color)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(//slivers to scrollables areas, prekonfigurowane bedzie max width dla kazdego elementu
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    ),);
  }
}
