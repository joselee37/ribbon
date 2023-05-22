import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        flexibleSpace: Container(
          color: Theme.of(context).colorScheme.inversePrimary,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              // focusNode: _focus,
              keyboardType: TextInputType.text,
              onChanged: (text) {},
              decoration: const InputDecoration(
                  // hintText: lang(0),
                  border: InputBorder.none,
                  icon: Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Icon(Icons.search))),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  _buildCategoryCard(
                      'Fashion & Accessories', Icons.shopping_bag),
                  _buildCategoryCard('Beauty', Icons.face),
                  _buildCategoryCard('Baby & Kids', Icons.child_care),
                  _buildCategoryCard('Food', Icons.restaurant),
                  _buildCategoryCard('Kitchenware', Icons.kitchen),
                  _buildCategoryCard('Household Items', Icons.home),
                  _buildCategoryCard('Home Decor', Icons.home),
                  _buildCategoryCard('Electronics & Appliances', Icons.tv),
                  _buildCategoryCard(
                      'Sports & Leisure', Icons.sports_basketball),
                  _buildCategoryCard('Automotive', Icons.car_rental),
                  _buildCategoryCard('Books, Music & DVDs', Icons.book),
                  _buildCategoryCard('Toys & Hobbies', Icons.toys),
                  _buildCategoryCard(
                      'Stationery & Office Supplies', Icons.assignment),
                  _buildCategoryCard('Pet Supplies', Icons.pets),
                  _buildCategoryCard('Health & Wellness', Icons.local_hospital),
                  _buildCategoryCard('Travel & Tickets', Icons.flight),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Theme.of(context).colorScheme.inversePrimary),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My',
              backgroundColor: Theme.of(context).colorScheme.inversePrimary),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
              backgroundColor: Theme.of(context).colorScheme.inversePrimary),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
              backgroundColor: Theme.of(context).colorScheme.inversePrimary),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String title, IconData iconData) {
    return InkWell(
      onTap: () {
// Navigate to category page
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 32.0,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
