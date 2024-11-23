import 'package:flutter/material.dart';

class recipeScreen extends StatelessWidget {
  const recipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: 
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
          ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom:20),
                    child: Text(
                      'Italian Pasta', 
                      style: TextStyle(
                        fontSize:30, 
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Image.asset('assets/images/pasta.jpg'),
                  ListTile(
                    leading: const Icon(Icons.food_bank, color: Color.fromARGB(255, 84, 49, 8)),
                    title: Text('Ingredients'),
                    subtitle: const Text(
                      'Pasta, olive oil, garlic, onion, canned tomatoes, tomato paste, fresh basil, dried oregano, salt, black pepper, red chili flakes, sugar, parmesan cheese.',
                      style: TextStyle(color: Color.fromARGB(255, 84, 49, 8))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 252, 177, 3),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 252, 177, 3),
      elevation: 0,
      title: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recipe',
            
          ),
        ]
      ),
    );
  }
}