import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
                      'Recipes Search', 
                      style: TextStyle(
                        fontSize:30, 
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
              ),
            ),
            searchBox(),
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