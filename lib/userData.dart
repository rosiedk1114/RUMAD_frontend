import 'package:flutter/material.dart';

class userData extends StatelessWidget {
  const userData({super.key});

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
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom:20),
                    child: Text(
                      'User Recipes', 
                      style: TextStyle(
                        fontSize:30, 
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.food_bank, color: Color.fromARGB(255, 84, 49, 8)),
                    title: const Text('Shrimp Pasta'),
                    subtitle: const Text('Includes: Milk, shrimp, parsley, lemon zest, linguine, olive oil, butter, salt, parmesan cheese.',
                      style: TextStyle(color: Color.fromARGB(255, 84, 49, 8))),
                  ),
                  ListTile(
                    leading: const Icon(Icons.food_bank, color: Color.fromARGB(255, 84, 49, 8)),
                    title: const Text('Classic Italian Lasagne'),
                    subtitle: const Text('Includes: Tomato sauce, ricotta cheese, garlic, ground beef, parsley, tomato paste, mozzarella, onion...',
                      style: TextStyle(color: Color.fromARGB(255, 84, 49, 8))),
                  ),
                  ListTile(
                    leading: const Icon(Icons.food_bank, color: Color.fromARGB(255, 84, 49, 8)),
                    title: const Text('Chicken Shawarma'),
                    subtitle: const Text(
                      'Includes: Chicken thighs, onion, olive oil, garlic cloves, lemon juice, paprika, cumin, cardamom...',
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

  Widget searchBox() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
        ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search, 
            color: Color.fromARGB(255, 23, 123, 75), 
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20, 
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Color.fromARGB(255, 100, 138, 100)),
        ),
      ),
    );
  }
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 252, 177, 3),
      elevation: 0,
      title: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 252, 177, 3),
            size: 30,
          ),
          SizedBox(
            
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/ankit.png'),
            ),
          ),
        ]
      ),
    );
  }
}