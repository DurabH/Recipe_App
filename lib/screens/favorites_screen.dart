import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/widgets/recipe_card.dart';

// 🌟 Global favorites list
List<Recipe> favoriteRecipes = [];

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  void removeFromFavorites(Recipe recipe) {
    setState(() {
      favoriteRecipes.remove(recipe);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Recipe removed from favorites!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 195, 130),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Favorites'),
      ),
      body:
          favoriteRecipes.isEmpty
              ? const Center(child: Text('No favorites added yet.'))
              : ListView.builder(
                itemCount: favoriteRecipes.length,
                itemBuilder: (context, index) {
                  final recipe = favoriteRecipes[index];
                  return Stack(
                    children: [
                      RecipeCard(recipe: recipe),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => removeFromFavorites(recipe),
                          tooltip: 'Remove from Favorites',
                        ),
                      ),
                    ],
                  );
                },
              ),
    );
  }
}
