import 'package:flutter/material.dart';
import 'package:graduation/category/bottom_nav_bar.dart';
import 'package:graduation/category/category_item.dart';
import 'package:graduation/model/category_item_model.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CategoryItemModel> categories = [
      CategoryItemModel(title: 'Speech', imageUrl: 'assets/تخاطب 1.png'),
      CategoryItemModel(title: 'Autism', imageUrl: 'assets/توحد 1.png'),
      CategoryItemModel(
          title: 'Learning difficulties', imageUrl: 'assets/صعوبه تعلم 1.png'),
      CategoryItemModel(
          title: 'Intelligence test', imageUrl: 'assets/اختبار ذكاء 1.png'),
      CategoryItemModel(
          title: 'Behavior modification', imageUrl: 'assets/تعديل سلوك 1.png'),
      CategoryItemModel(
          title: 'Skills development', imageUrl: 'assets/تنميه مهارات 1.png'),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff336EA6),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.88, // عدد الأعمدة (مربعات) في كل صف
          crossAxisSpacing: 10.0, // المسافة بين الأعمدة
          mainAxisSpacing: 10.0, // المسافة بين الصفوف
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(categoryItem: categories[index]);
        },
        padding: EdgeInsets.all(10.0), // مساحة padding حول الـ Grid
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
