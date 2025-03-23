import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/screens/favorites_screen.dart'; // importing this for global list

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetailScreen({super.key, required this.recipe});

  void addToFavorites(BuildContext context) {
    if (!favoriteRecipes.contains(recipe)) {
      favoriteRecipes.add(recipe);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Recipe added to favorites!'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Recipe is already in favorites.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(recipe.title),
      ),
      backgroundColor: const Color.fromARGB(255, 233, 195, 130),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  recipe.imageUrl,
                  width: 400,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 50),
                Text(recipe.description, style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 20),
                const Text(
                  'Ingredients:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ...recipe.ingredients.map(
                  (ingredient) => Text('- $ingredient'),
                ),
                const SizedBox(height: 100), // Space to avoid overlap with FAB
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.orange,
              child: const Icon(Icons.favorite_border),
              onPressed: () => addToFavorites(context),
            ),
          ),
        ],
      ),
    );
  }
}
