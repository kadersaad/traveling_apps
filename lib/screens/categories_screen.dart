import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('دليل سياحي'),),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200, // تحديد كم عمود يتم عرضه بالاعتماد على حجم شاشة كل هاتف     ادا كان عرض هاتف 500 يتم عرض عمودين
        childAspectRatio: 7/8,  // 1/1 تعني العرض يساوي الارتفاع
        mainAxisSpacing: 10,  // فراغات بشكل افقي
        crossAxisSpacing: 10,  // فراغات بشكل عمودي
        ),
        children: [

        ],
      ),
    );
  }
}
