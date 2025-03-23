import 'package:flutter/material.dart';
import 'package:recipe_app/screens/recipe_list_screen.dart';
import 'package:recipe_app/screens/favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        233,
        195,
        130,
      ), // Light yellow/orangish background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Recipe App',
          style: TextStyle(
            color: Color(0xFFB24C00),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Welcome to Haider's Recipe App",
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.brown,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(height: 100),

            // Centered Row with "In this App" and "You can"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "In this App, You can",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFFB24C00),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Text(
              "Discover a variety of delicious recipes from around the world. "
              "Easily \nbrowse, view details, and save your favorite dishes. "
              "Your personal \ncookbook is now just a tap away!",
              style: TextStyle(fontSize: 18, color: Colors.black87),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 80),

            // Buttons Row (Side by Side)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 18,
                    ),
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text(
                    'Browse Recipes',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 253, 253, 253),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RecipeListScreen(),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 18,
                    ),
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text(
                    'My Favorites',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 253, 253, 253),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FavoritesScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
