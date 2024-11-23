import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom:20),
                    child: Text(
                      'Recipe Home', 
                      style: TextStyle(
                        fontSize:30, 
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 239, 255, 221),
    );
  }

   AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 170, 208, 130),
      elevation: 0,
      title: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 22, 73, 35),
            size: 30,
          ),
          Text('Recipe Home'),
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