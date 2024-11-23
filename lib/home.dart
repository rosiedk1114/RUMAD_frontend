import 'package:flutter/material.dart';
import 'package:frontend_template/Questionnaire.dart';
import 'package:frontend_template/searchScreen.dart';
import 'package:frontend_template/userData.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                   Center(
                     child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 20),
                      child: Text(
                        'Recipe Home',
                        style:
                            TextStyle(fontSize: 36, fontWeight: FontWeight.w800),
                      ),
                                       ),
                   ),  
                  Image.asset(
                    'assets/images/breakfast.jpeg',
                    width: screenWidth,
                    height: screenHeight * 0.6,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 223, 149),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 252, 177, 3),
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
          icon: Icon(Icons.home),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Search()),
            );
          },
          icon: Icon(Icons.search),
        ),
         IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionnaireScreen()),
            );
          },
          icon: Icon(Icons.fastfood),
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => userData()),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/ankit.png'),
            ),
          ),
        ),
      ]),
    );
  }
}
