import 'package:flutter/material.dart';
import 'package:graduation/category/bottom_nav_bar.dart';
import 'package:graduation/category/category_chip.dart';
import 'package:graduation/category/doctorhome_category.dart';
import 'package:graduation/model/dectorcard.dart';
import 'package:graduation/screens/book_doctor.dart';
import 'package:graduation/screens/categorypage.dart';

class HomeUserPage extends StatelessWidget {
  HomeUserPage({super.key});
  final categories = [
    'Speech',
    'Autism',
    'Learning difficulties',
    'Intelligence test',
  ];

  @override
  Widget build(BuildContext context) {
    List<DoctorCard> doctors = [
      DoctorCard(
        name: 'Dr. Osama Ali',
        experience: '10 years',
        price: '\$25.00',
        rating: 4.5,
        imageUrl: 'assets/osama.png',
      ),
      DoctorCard(
        name: 'Dr. Sara Selem',
        experience: '12 years',
        price: '\$20.99',
        rating: 4.8,
        imageUrl: 'assets/sara.png',
      ),
      DoctorCard(
        name: 'Dr. May morad',
        experience: '10 years',
        price: '\$25.00',
        rating: 4.5,
        imageUrl: 'assets/may.png',
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40),
            SizedBox(width: 8),
            Text(
              'Markaz ElAmal',
              style: TextStyle(
                color: Color(0xff233B55),
              ),
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4), // لون الظل
                    spreadRadius: 2, // مدى انتشار الظل
                    blurRadius: 7, // مدى ضبابية الظل
                    offset: Offset(2, 2), // إزاحة الظل (x, y)
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff336EA6),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 26,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4), // لون الظل
                    spreadRadius: 2, // مدى انتشار الظل
                    blurRadius: 7, // مدى ضبابية الظل
                    offset: Offset(2, 2), // إزاحة الظل (x, y)
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff336EA6),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                  size: 24,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      BorderSide(color: Colors.black), // حدود سوداء للحواف
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Colors.black,
                      width: 2), // حدود سوداء عند عدم التركيز
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Colors.black, width: 2), // حدود سوداء عند التركيز
                ),
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            SizedBox(height: 16),
            // Image
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/reading-hard.png'),
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff233B55),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff233B55),
                        ),
                      ),
                      SizedBox(width: 8), // مسافة بين النص والسهم
                      Icon(
                        Icons.arrow_forward, // أيقونة السهم
                        color: Color(0xff233B55),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 55, // حدد الارتفاع لـ ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // لتتمكن من التمرير بشكل أفقي
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0), // إضافة بعض المسافة بين الفئات
                    child: CategoryChip(label: categories[index]),
                  );
                },
              ),
            ),

            SizedBox(height: 16),
            // Doctors Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Doctors',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff233B55),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // التنقل إلى صفحة أخرى هنا
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BookDoctor()), // استبدل YourNextPage بالصفحة المستهدفة
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff233B55),
                        ),
                      ),
                      SizedBox(width: 8), // مسافة بين النص والسهم
                      Icon(
                        Icons.arrow_forward, // أيقونة السهم
                        color: Color(0xff233B55),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              height: 255,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  return Container(
                    // height: 150,
                    width: 260,
                    child: DoctorhomeCategory(
                        doctor: doctors[index]), // تمرير كائن DoctorCard
                  );
                },
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff336EA6), // لون خلفية الشريط السفلي
        type: BottomNavigationBarType.fixed,

        // حجم الأيقونات
        iconSize: 30, // تحديد حجم الأيقونات

        // الألوان للأيقونات المختارة وغير المختارة
        selectedItemColor: Colors.white, // لون الأيقونة عند اختيار العنصر
        unselectedItemColor:
            Colors.white.withOpacity(0.7), // لون الأيقونة غير المختارة

        // تعديل شكل النصوص المختارة وغير المختارة
        selectedLabelStyle: TextStyle(
          fontSize: 14, // حجم النص المختار
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14, // حجم النص غير المختار
        ),

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),*/
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MarkazElAmalApp());
}

class MarkazElAmalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40),
            SizedBox(width: 8),
            Text(
              'Markaz ElAmal',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Image
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/child.jpg'), // استبدل بـ الصورة الخاصة بك
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See All'),
                ),
              ],
            ),
            Row(
              children: [
                CategoryChip(label: 'Speech'),
                CategoryChip(label: 'Autism'),
                CategoryChip(label: 'Learning'),
              ],
            ),
            SizedBox(height: 16),
            // Doctors Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Doctors',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See All'),
                ),
              ],
            ),
            DoctorCard(
              name: 'Dr. Sara Selem',
              experience: '12 years',
              price: '\$20.99',
              rating: 4.8,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;

  CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.blue,
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String experience;
  final String price;
  final double rating;

  DoctorCard({
    required this.name,
    required this.experience,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/doctor.jpg'), // استبدل بـ الصورة الخاصة بك
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('$experience experience'),
                Text(price),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Text(rating.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/