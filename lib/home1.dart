
import 'package:flutter/material.dart';
import 'favourite.dart'; // Import the FavoritesScreen from favourite.dart
import 'login2.dart';
import 'profile.dart';
import 'rajkot.dart'; // Make sure to import RajkotTourPage
import 'ahmedabad.dart';
import 'vadodara.dart';
import 'gandhinagar.dart';
import 'settings.dart';

// Home Screen with Navigation Bar
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of favorite places (for demonstration purposes, you could populate this dynamically)
  final List<String> _favorites = ['Rajkot', 'Somnath'];

  // Pages for each tab in the navigation bar
  final List<Widget> _pages;

  _HomeScreenState()
      : _pages = [
    const HomeContent(), // Main content of Home Page
    const LoginScreen(), // Changed this line to open SignUpScreen when "Trips" is clicked
    const FavoritesScreen(favorites: ['Rajkot', 'Somnath']), // Using FavoritesScreen from favourite.dart
    const NotificationScreen(),
    const ProfilePage(),
  ];

  // Method to handle tap on navigation bar items
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped, // Change the selected index when tapping a button
        type: BottomNavigationBarType.fixed, // Make sure all icons are visible
      ),
    );
  }
}

// Other parts of home1.dart remain unchanged...

// Main content of Home tab (HomeContent)
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );
          },
        ),
        title: const Text(
          'Explore',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              showSearchDialog(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hi, User',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Let's explore the world!",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 40),

              const SectionTitle(title: 'Top Cities'),
              const SizedBox(height: 12),

              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AhmedabadScreen()),
                      );
                    },
                    child: const PlaceCard(
                      imageUrl:
                      'https://en-media.thebetterindia.com/uploads/2022/08/Untitled-design-2022-08-27T121008.682-1661584220.jpg',
                      title: 'Ahmedabad',
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GandhinagarScreen()),
                      );
                    },
                    child: const PlaceCard(
                      imageUrl:
                      'https://www.newedgerealty.in/upload/blogs/actual/1693208696.9.gift%20city%20investment.jpg',
                      title: 'Gandhinagar',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              const SectionTitle(title: 'All Cities'),
              const SizedBox(height: 12),

              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RajkotScreen()),
                      );
                    },
                    child: const PlaceCard(
                      imageUrl:
                      'https://rajkotcityblog.wordpress.com/wp-content/uploads/2016/08/rajkot-002.jpg?w=900',
                      title: 'Rajkot',
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const VadodaraScreen()),
                      );
                    },
                    child: const PlaceCard(
                      imageUrl:
                      'https://media.licdn.com/dms/image/D4D12AQEH-hF2HiAvtg/article-cover_image-shrink_720_1280/0/1694520273345?e=2147483647&v=beta&t=m_aKY96O9EWZCjzyUKkYuCdfh7N2a2H20APMQFYUvEA',
                      title: 'Vadodara',
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RajkotScreen()),
                      );
                    },
                    child: const PlaceCard(
                      imageUrl:
                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/b6/0a/e8/porbandar-beach.jpg?w=1200&h=-1&s=1',
                      title: 'Porbandar',
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RajkotScreen()),
                      );
                    },
                    child: const PlaceCard(
                      imageUrl:
                      'https://www.tirthyatraindia.com/assets/images/spiritual-tours/somnath-temple.jpg',
                      title: 'Somnath',
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RajkotScreen()),
                      );
                    },
                    child: const PlaceCard(
                      imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGjPoUDuQhlML-Xp0y88aMUUcgUVqv2PXAI7CDm1PhWfC-zfBXaR4L2iRV9V_4lwf39co&usqp=CAU',
                      title: 'Jamnagar',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Show search dialog
  void showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Search Places"),
          content: TextField(
            decoration: const InputDecoration(
              hintText: "What places do you want to visit?",
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (value) {
              // Handle the search query input
              print("Search query: $value");
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }
}

// Reusable widget for section title
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(onPressed: () {}, child: const Text('See more'))
      ],
    );
  }
}

// Custom widget for Place cards (PlaceCard)
class PlaceCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const PlaceCard({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Full width for vertical layout
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// Trip Screen
class TripScreen extends StatelessWidget {
  const TripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Trips')),
      body: const Center(
        child: Text('Trip Page Content'),
      ),
    );
  }
}

// Favorite Screen
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: const Center(
        child: Text('Favorites Page Content'),
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // When the back button is pressed, pop the current screen and navigate back to the HomeScreen.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()), // Adjust this if HomeScreen is elsewhere
        );
        return false; // Prevent the default back navigation
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
        ),
        body: const Center(
          child: Text('No new notifications yet!'),
        ),
      ),
    );
  }
}


// Profile Screen
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(
        child: Text('Profile Page Content'),
      ),
    );
  }
}

