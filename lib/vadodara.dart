import 'package:flutter/material.dart';

class VadodaraScreen extends StatelessWidget {
  const VadodaraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vadodara - The Cultural Capital of Gujarat'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Main Image
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/6/6d/Laxmi_Vilas_Palace%2C_Baroda.jpg', // Replace with a real image URL
              width: double.infinity,
              height: 250.0,
              fit: BoxFit.cover,
            ),

            // Section: Overview
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Vadodara - The Cultural Capital of Gujarat',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Vadodara, also known as Baroda, is a city in Gujarat with a rich cultural heritage. The city is renowned for its grand palaces, beautiful gardens, and vibrant festivals, making it a top tourist destination in India. Vadodara is also famous for its education system, arts, and crafts.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
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
                'Vadodara has a rich history dating back to the 16th century when it was established as a princely state under the Gaekwad dynasty. The city is home to several architectural marvels, including palaces, temples, and monuments that showcase the grandeur of its royal past.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),

            // Top Attractions Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Top Attractions in Vadodara',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildAttractionCard(
              'Laxmi Vilas Palace',
              'Laxmi Vilas Palace is one of the largest private residences in India and a remarkable example of Indo-Saracenic architecture. It serves as the home to the Gaekwad family and features a museum and beautiful gardens.',
              'https://www.gujarattourism.com/content/dam/gujrattourism/images/heritage-sites/laxmi-vilas-palace/Laxmi-Vilas-Palace-Thumbnail.jpg', // Real image URL for Laxmi Vilas Palace
            ),
            _buildAttractionCard(
              'Sayaji Garden',
              'Sayaji Garden, one of the oldest gardens in the city, is a tranquil escape with a zoo, museum, and several monuments. It is a perfect place to enjoy a relaxing day with family.',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRhYO9qL1wFR7LA8HHihGllHaexa1RC1zeQg&s', // Real image URL for Sayaji Garden
            ),
            _buildAttractionCard(
              'Kirti Mandir',
              'Kirti Mandir is dedicated to the Gaekwad rulers and showcases beautiful murals and paintings of the royal family. It is an iconic landmark of Vadodara.',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuDhthwrcemvHgHUUTP1xN_JCkN8ZKN0Xofg&s', // Real image URL for Kirti Mandir
            ),
            _buildAttractionCard(
              'Baroda Museum & Picture Gallery',
              'The Baroda Museum & Picture Gallery houses an extensive collection of artifacts, paintings, and sculptures that highlight the rich cultural history of the region.',
              'https://www.gujarattourism.com/content/dam/gujrattourism/images/museums/baroda-museum-and-picture-gallery/Baroda-Museum-And-Picture-Gallery-Banner.jpg', // Real image URL for Baroda Museum
            ),

            // Famous Food Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Famous Foods in Vadodara',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildFoodItem('Patra', 'A savory steamed snack made from colocasia leaves with gram flour and spices, served with chutneys.', Icons.fastfood),
            _buildFoodItem('Dhokla', 'A light and fluffy steamed cake made from fermented rice and chickpea flour, popular as a breakfast dish.', Icons.fastfood),
            _buildFoodItem('Farsan', 'A collection of deep-fried snacks like fafda, sev, and gathiya, served with chutneys and tea.', Icons.fastfood),
            _buildFoodItem('Khandvi', 'A delicate snack made from gram flour, rolled into thin layers, and garnished with mustard seeds and coconut.', Icons.fastfood),

            // Cultural Significance Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Cultural Significance of Vadodara',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Vadodara is a hub of art, culture, and traditions. The city hosts several festivals, including the famous Navratri festival, and is known for its classical dance, music performances, and folk arts.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            _buildCulturalItem('Navratri Festival', 'Vadodara celebrates the Navratri festival with grand Garba and Dandiya dances. It’s an occasion for the whole city to come together and celebrate in unison.', Icons.event),
            _buildCulturalItem('Rath Yatra', 'The annual Rath Yatra in Vadodara is a grand procession with chariots, music, and thousands of devotees, marking a significant cultural event in the city.', Icons.event),

            // Shopping Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Shopping in Vadodara',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Vadodara is known for its handicrafts, textiles, and traditional Gujarati clothing. Popular shopping areas include Mandvi Gate Market and Nyay Mandir Market, where you can find a wide range of goods from jewelry to clothing and more.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            _buildShoppingItem('Mandvi Gate Market', 'This market is famous for its traditional textiles, jewelry, and handicrafts, offering a great shopping experience for visitors.', Icons.shopping_bag),
            _buildShoppingItem('Nyay Mandir Market', 'A bustling market for clothing, accessories, and home decor. It’s a great place to explore the local shopping scene.', Icons.shopping_bag),

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
                'Vadodara is a city that blends history, culture, and modernity beautifully. With its royal past, vibrant festivals, rich food culture, and incredible shopping experience, Vadodara offers something for every traveler.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
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

  // Helper function for shopping items
  Widget _buildShoppingItem(String market, String description, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(market, style: const TextStyle(fontSize: 18)),
      subtitle: Text(description),
    );
  }
}
