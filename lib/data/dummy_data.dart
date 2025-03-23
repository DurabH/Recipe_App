import 'package:recipe_app/models/recipe.dart';

final List<Recipe> dummyRecipes = [
  Recipe(
    id: 'r1',
    title: 'Spaghetti Bolognese',
    imageUrl: 'assets/images/spaghetti.jpeg',
    description: 'Classic Italian pasta dish with meat sauce.',
    ingredients: [
      'Spaghetti',
      'Tomato Sauce',
      'Ground Beef',
      'Onion',
      'Garlic',
    ],
  ),
  Recipe(
    id: 'r2',
    title: 'Pizza',
    imageUrl: 'assets/images/pizza.jpeg',
    description:
        'An italian origin dish with a base of dough and toppings.\nBite into our unique Pizza creations',
    ingredients: [
      'Chicken',
      'Flour',
      'Yeast',
      'Pizza Sauce',
      'Cheese',
      'Olives',
      'Salt',
    ],
  ),
  Recipe(
    id: 'r3',
    title: 'Sandwiches',
    imageUrl: 'assets/images/sandwiches.jpeg',
    description:
        'A sandwich is a beloved lunch option. Sandwich is an edible love letter.',
    ingredients: ['Bread', 'Cheese', 'Vegetables', 'Mayonnaise', 'Chicken'],
  ),
  Recipe(
    id: 'r4',
    title: 'Chicken Curry',
    imageUrl: 'assets/images/curry.jpeg',
    description: 'Aromatic chicken curry with spices.',
    ingredients: ['Chicken', 'Curry Powder', 'Coconut Milk', 'Onion', 'Ginger'],
  ),
  Recipe(
    id: 'r5',
    title: 'Chicken Karahi',
    imageUrl: 'assets/images/karahi.jpeg',
    description:
        'A fiery fusion of tender chicken, blistered tomatoes, and bold spices, '
        'cooked in a traditional wok for a rustic, smoky finish.',
    ingredients: ['Chicken', 'Oil', 'Tomatoes', 'Ginger', 'Crushed Spices'],
  ),
  Recipe(
    id: 'r6',
    title: 'Chicken Biryani',
    imageUrl: 'assets/images/biryani.jpeg',
    description:
        'Fragrant basmati rice layered with spiced chicken, caramelized onions, '
        'and fresh herbs. \nA timeless classic where every bite is a burst of aroma, '
        'heat, and soulful flavor.',
    ingredients: [
      'Chicken',
      'Basmati Rice',
      'Onions',
      'Tomatoes',
      'Spices',
      'Oil',
    ],
  ),
  Recipe(
    id: 'r7',
    title: 'Nihari',
    imageUrl: 'assets/images/nihari.jpeg',
    description:
        'A rich, slow-braised beef stew infused with warm spices '
        'and bone marrow, delivering deep, melt-in-your-mouth flavor with a silky, aromatic gravy.',
    ingredients: [
      'Beef/Lamb/Mutton',
      'Spices',
      'Wheat Flour',
      'Onion',
      'Ginger',
    ],
  ),
  Recipe(
    id: 'r8',
    title: 'Haleem',
    imageUrl: 'assets/images/haleem.jpeg',
    description:
        'A slow-cooked blend of lentils, wheat, and tender meat, '
        'simmered into a creamy, spiced stew—comforting, hearty, '
        'and soul-warming with every spoonful.',
    ingredients: [
      'Beef/Lamb/Chicken',
      'Lentils',
      'Spices',
      'Onion',
      'Ginger',
      'Yougurt',
    ],
  ),
];
