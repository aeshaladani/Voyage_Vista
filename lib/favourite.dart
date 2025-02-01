import 'package:flutter/material.dart';
import 'home1.dart';
class FavoritesScreen extends StatelessWidget {
  final List<String> favorites;

  const FavoritesScreen({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to the HomeScreen when back button is pressed
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()), // Assuming HomeScreen is the name of your home screen
        );
        return false; // Prevent default back button behavior
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
        ),
        body: favorites.isEmpty
            ? const Center(child: Text('No favorites added yet!'))
            : ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(favorites[index]),
                    leading: const Icon(Icons.favorite, color: Colors.red),
                  );
                },
              ),
      ),
    );
  }
}
