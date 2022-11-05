import 'package:flutter/material.dart';
import 'package:traveling_app/app_data.dart';
import 'package:traveling_app/widgets/categories_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('دليل سياحي'),),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300, // تحديد كم عمود يتم عرضه بالاعتماد على حجم شاشة كل هاتف     ادا كان عرض هاتف 600 يتم عرض عمودين
        childAspectRatio: 7/8,  // 1/1 تعني العرض يساوي الارتفاع
        mainAxisSpacing: 10,  // فراغات بشكل افقي
        crossAxisSpacing: 10,  // فراغات بشكل عمودي
        ),
        children: Categories_data.map((categoryData) =>
        CategoryItem(categoryData.title, categoryData.imageUrl)
        ).toList(),
      ),
    );
  }
}
