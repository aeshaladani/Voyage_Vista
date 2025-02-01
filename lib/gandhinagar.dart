import 'package:flutter/material.dart';

class GandhinagarScreen extends StatelessWidget {
  const GandhinagarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gandhinagar - The Green City of Gujarat'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Main Image
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/7/77/Akshardham_Gandhinagar_Gujarat.jpg', // Replace with Gandhinagar city image
              width: double.infinity,
              height: 250.0,
              fit: BoxFit.cover,
            ),

            // Section: Overview
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Gandhinagar - The Green City of Gujarat',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Gandhinagar, the capital of Gujarat, is renowned for its well-planned infrastructure, wide roads, and greenery. Situated along the Sabarmati River, it is a hub of political activity in Gujarat. The city is named after Mahatma Gandhi and showcases his principles of simplicity, peace, and harmony.',
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
                'Gandhinagar was founded in the 1960s and named after Mahatma Gandhi, with the vision to create a modern and well-organized city. It is a planned city designed to be a government hub with vast green spaces, making it one of the cleanest cities in India.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),

            // Top Attractions Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Top Attractions in Gandhinagar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildAttractionCard(
              'Akshardham Temple',
              'The Akshardham Temple in Gandhinagar is a major spiritual and cultural center. It is known for its grand architecture, spiritual exhibitions, and cultural performances.',
              'https://ihplb.b-cdn.net/wp-content/uploads/2018/12/AKshardham_Gandhinagar.jpg', // Image URL for Akshardham Temple
            ),
            _buildAttractionCard(
              'Sarita Udyan',
              'Sarita Udyan is a scenic garden along the banks of the Sabarmati River, offering a peaceful retreat with beautiful landscapes and boat rides.',
              'https://media1.thrillophilia.com/filestore/awn8rn34bo4wzqalnvhbzs9y06k6_1581164255_sarita2.jpg', // Image URL for Sarita Udyan
            ),
            _buildAttractionCard(
              'Indroda Nature Park',
              'Indroda Nature Park, one of the largest dinosaur fossil parks in India, is a great place for nature lovers. It also houses a zoo and botanical garden.',
              'https://www.gujarattourism.com/content/dam/gujrattourism/images/flora--fauna/indroda-dinosaur-and-fossil-park/Indroda-Dinosaur-and-Fossil-Park-Banner.jpg', // Image URL for Indroda Nature Park
            ),
            _buildAttractionCard(
              'Gandhinagar Railway Station',
              'The Gandhinagar Railway Station is an architectural landmark and a major transport hub connecting the city with various parts of India.',
              'https://hellogandhinagar.com/wp-content/uploads/2024/02/Railway-Station-Gandhinagar.png', // Image URL for Gandhinagar Railway Station
            ),

            // Famous Food Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Famous Foods in Gandhinagar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildFoodItem('Khichu', 'A Gujarati snack made from rice flour and spices, commonly served with a dollop of butter. Perfect for a quick bite.', Icons.fastfood),
            _buildFoodItem('Khandvi', 'A savory rolled-up snack made from gram flour and turmeric, garnished with sesame seeds and mustard.', Icons.fastfood),
            _buildFoodItem('Farsan', 'A variety of fried snacks including gathiya, fafda, and sev that are enjoyed as appetizers or snacks with tea.', Icons.fastfood),
            _buildFoodItem('Dhokla', 'A steamed and spongy snack made from fermented rice and chickpea flour, usually served with chutneys.', Icons.fastfood),

            // Cultural Significance Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Cultural Significance of Gandhinagar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Gandhinagar celebrates various cultural festivals like Navratri and Makar Sankranti, with grand celebrations and performances of Garba, Dandiya, and kite flying.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            _buildCulturalItem('Navratri Festival', 'Navratri is celebrated with grand Garba dances and cultural performances. It is one of the most significant festivals in Gandhinagar.', Icons.event),
            _buildCulturalItem('Makar Sankranti', 'The city celebrates Makar Sankranti with kite flying and sweets made from sesame and jaggery.', Icons.event),

            // Shopping Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Shopping in Gandhinagar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Gandhinagar offers various local markets where visitors can shop for traditional Gujarati handicrafts, textiles, and jewelry. Popular shopping areas include Sector 7 and Sector 21 markets.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            _buildShoppingItem('Sector 7 Market', 'This market offers a range of traditional Gujarati items, from textiles to jewelry and souvenirs.', Icons.shopping_bag),
            _buildShoppingItem('Sector 21 Market', 'A bustling market where you can find local handicrafts, spices, and home decor.', Icons.shopping_bag),

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
                'Gandhinagar is a beautifully planned city with a blend of modernity and tradition. From its serene parks and temples to its vibrant culture and festivals, it offers a perfect destination for those looking for peace, spirituality, and cultural richness.',
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
