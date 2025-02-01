import 'package:flutter/material.dart';

class AhmedabadScreen extends StatelessWidget {
  const AhmedabadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ahmedabad - The City of Heritage'),
      ),
      body: ListView(
        children: [
          // Header Image from URL
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Sheth_Hutheesinh_Temple.jpg/1200px-Sheth_Hutheesinh_Temple.jpg', // Replace with a real image URL
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Ahmedabad - A City of Heritage, Culture, and Innovation',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Ahmedabad, the largest city in Gujarat, is a vibrant blend of tradition and modernity. Known as the "Manchester of the East," the city boasts a rich cultural history, remarkable architectural wonders, and a lively atmosphere with bustling markets and exceptional food.',
              style: TextStyle(fontSize: 16),
            ),
          ),

          // Historical Significance
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Historical Significance',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Ahmedabad, founded by Sultan Ahmed Shah in 1411, served as the capital of the Gujarat Sultanate. The city witnessed centuries of growth and change, and today, it stands as a thriving metropolis. Its rich legacy is visible in its numerous monuments, stepwells, mosques, and museums.',
              style: TextStyle(fontSize: 16),
            ),
          ),

          // Top Attractions Section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Top Attractions in Ahmedabad:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          _buildAttractionCard(
            'Sabarmati Ashram',
            'The former residence of Mahatma Gandhi, Sabarmati Ashram is a pilgrimage site for followers of the Mahatma, showcasing his simple life and revolutionary ideas.',
            'https://upload.wikimedia.org/wikipedia/commons/9/9a/GANDHI_ASHRAM_03.jpg', // Replace with a real image URL
          ),
          _buildAttractionCard(
            'Sidi Saiyyed Mosque',
            'Famous for its intricate carvings, the Sidi Saiyyed Mosque is a perfect example of Indo-Saracenic architecture. The iconic Sidi Saiyyed Jali, a stone latticework, is a symbol of Ahmedabad.',
            'https://upload.wikimedia.org/wikipedia/commons/7/7d/Mosque_of_Sidi_Sayed_Jaali.JPG', // Replace with a real image URL
          ),
          _buildAttractionCard(
            'Kankaria Lake',
            'A man-made lake surrounded by lush gardens, Kankaria Lake offers boat rides, a zoo, an amusement park, and a serene atmosphere for picnics.',
            'https://upload.wikimedia.org/wikipedia/commons/2/2a/Kankaria_Carnival_2_Ahmedabad.JPG', // Replace with a real image URL
          ),
          _buildAttractionCard(
            'Adalaj Stepwell',
            'This 15th-century stepwell is a stunning example of intricate Indo-Islamic architecture, designed to store water while also serving as a gathering place.',
            'https://upload.wikimedia.org/wikipedia/commons/e/e8/Adalaj_ki_Vav_Gujarat_240A1370_72.jpg', // Replace with a real image URL
          ),

          // Famous Food Section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Famous Foods in Ahmedabad:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          _buildFoodItem('Khaman', 'A popular snack made from gram flour, steamed to perfection, and served with chutneys.', Icons.fastfood),
          _buildFoodItem('Dhokla', 'A fluffy, savory cake made from fermented rice and chickpea flour, often served with chutney or tea.', Icons.fastfood),
          _buildFoodItem('Thepla', 'A traditional Gujarati flatbread made with whole wheat flour, fenugreek leaves, and spices.', Icons.fastfood),
          _buildFoodItem('Farsan', 'A mixture of crispy, fried snacks like fafda, ganthiya, and sev, often eaten with chutneys.', Icons.fastfood),

          // Cultural Section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Cultural Significance of Ahmedabad:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Ahmedabad is not just a city; it is a cultural hub of Gujarat. The city is known for its deep-rooted traditions of arts, crafts, and literature. It hosts various cultural festivals throughout the year, such as Navratri, Uttarayan, and the International Kite Festival.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          _buildCulturalItem('Navratri', 'Navratri in Ahmedabad is a spectacle of dance and music, with Garba and Dandiya performed all night long, making it one of the biggest cultural festivals in India.', Icons.event),
          _buildCulturalItem('Uttarayan', 'Uttarayan, or Makar Sankranti, is celebrated by flying kites, with the city skyline filled with colorful kites. The festival brings together families and communities.', Icons.event),
          _buildCulturalItem('International Kite Festival', 'The International Kite Festival in Ahmedabad attracts people from all over the world who come to celebrate the tradition of kite flying.', Icons.event),

          // Shopping Section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Shopping in Ahmedabad:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Ahmedabad is famous for its traditional handicrafts, including bandhani (tie-dye), patola silk, khadi, and woolen textiles. The city is also a hub for modern shopping malls and markets like the Law Garden and Manek Chowk markets.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          _buildShoppingItem('Law Garden Market', 'Famous for its traditional Gujarati clothing, including Bandhani sarees and jewelry, this market is a great place for shopping local handicrafts.', Icons.shopping_bag),
          _buildShoppingItem('Manek Chowk', 'A vibrant market where you can find everything from jewelry to street food, especially popular in the evening for local snacks.', Icons.shopping_bag),

          // Conclusion
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Conclusion',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Ahmedabad is a city that offers a unique mix of history, culture, food, and modernity. Whether you are visiting for its historic sites, vibrant festivals, or its flavorful cuisine, Ahmedabad promises an unforgettable experience.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  // Helper function for attraction cards
  Widget _buildAttractionCard(String title, String description, String imageUrl) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 4.0,
      child: Column(
        children: [
          Image.network(imageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text(description),
            ),
          ),
        ],
      ),
    );
  }

  // Helper function for food items
  Widget _buildFoodItem(String foodName, String description, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(foodName, style: const TextStyle(fontSize: 18)),
      subtitle: Text(description),
    );
  }

  // Helper function for cultural events
  Widget _buildCulturalItem(String event, String description, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(event, style: const TextStyle(fontSize: 18)),
      subtitle: Text(description),
    );
  }

  // Helper function for shopping places
  Widget _buildShoppingItem(String place, String description, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(place, style: const TextStyle(fontSize: 18)),
      subtitle: Text(description),
    );
  }
}
