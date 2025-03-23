import 'package:flutter/material.dart';
import 'package:recipe_app/data/dummy_data.dart';
import 'package:recipe_app/widgets/recipe_card.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 195, 130),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Recipes'),
      ),
      body: ListView.builder(
        itemCount: dummyRecipes.length,
        itemBuilder: (ctx, index) {
          return RecipeCard(recipe: dummyRecipes[index]);
        },
      ),
    );
  }
}
