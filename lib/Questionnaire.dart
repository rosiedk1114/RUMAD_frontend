import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:frontend_template/recipeScreen.dart';

class QuestionnaireScreen extends StatefulWidget {
  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  //stores answers
  String answer1 = '';
  String answer2 = '';
  String answer3 = '';
  String answer4 = '';

  // submits answers, displays recipe if found
  // void submitAnswers() async {
  //   Map<String, String> answers = {
  //     'question1': answer1,
  //     'question2': answer2,
  //     'question3': answer3,
  //     'question4': answer4,
  //   };
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 177, 3),
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text("Question 1: What's your preferred cuisine?", style: TextStyle(fontSize: 16)),
            TextField(
              onChanged: (value) => setState(() => answer1 = value),
              decoration: InputDecoration(
                hintText: 'e.g., Italian, Mexican, etc.',
              ),
            ),
            SizedBox(height: 16),
            
            Text("Question 2: Any dietary restrictions?", style: TextStyle(fontSize: 16)),
            TextField(
              onChanged: (value) => setState(() => answer2 = value),
              decoration: InputDecoration(
                hintText: 'e.g., Vegan, Gluten-Free, etc.',
              ),
            ),
            SizedBox(height: 16),

            Text("Question 3: How much time do you have?", style: TextStyle(fontSize: 16)),
            TextField(
              onChanged: (value) => setState(() => answer3 = value),
              decoration: InputDecoration(
                hintText: 'e.g., 20 minutes',
              ),
            ),
            SizedBox(height: 16),

            Text("Question 4: What main ingredient do you prefer?", style: TextStyle(fontSize: 16)),
            TextField(
              onChanged: (value) => setState(() => answer4 = value),
              decoration: InputDecoration(
                hintText: 'e.g., Chicken, Tofu, etc.',
              ),
            ),
            SizedBox(height: 32),

            Center(
              child: ElevatedButton(
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const recipeScreen()),
                );
                },
                child: Text('Get Recipe'),
              ),
            ),
          ],
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
            color: Color.fromARGB(0, 22, 73, 35),
            size: 30,
          ),
          const Text(
            'Recipe Recommender',
            style: TextStyle(
              fontSize:30, 
              fontWeight: FontWeight.w500,
            ),
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

class RecipeScreen extends StatelessWidget {
  final String recommendedRecipe;

  RecipeScreen({required this.recommendedRecipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Details'),
      ),
      body: Center(
        child: Text(
          'Recommended Recipe: $recommendedRecipe',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
