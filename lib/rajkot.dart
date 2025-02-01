/*import 'package:flutter/material.dart';
import 'info.dart'; // Ensure this imports the code

void main() {
  runApp(MaterialApp(
    home: RajkotTourPage(),
  ));
}

class RajkotTourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://via.placeholder.com/150', // Profile image placeholder
              ),
            ),
            SizedBox(width: 10),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.red),
                Text(
                  'Rajkot, Gujarat',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.notifications, color: Colors.black),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.filter_list),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 15),
              // Category buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    categoryButton('All'),
                    categoryButton('Cultural'),
                    categoryButton('Natural'),
                    categoryButton('Historical'),
                    categoryButton('Restaurants'),
                    categoryButton('Hotels'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Recommendations
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommendation',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    placeCard(
                      context,
                      'Atal Sarovar',
                      'Ring Road, KKV chowk',
                      'https://www.ccel.in/wp-content/uploads/2022/09/DJI_0925_1.jpg',
                      4.8,
                    ),
                    placeCard(
                      context,
                      'Watson Museum',
                      'Jubille Garden, Jawahar Road',
                      'https://media-cdn.tripadvisor.com/media/photo-s/11/0b/3a/3a/watson-museum.jpg',
                      4.7,
                    ),
                    placeCard(
                      context,
                      'Rotary International Dolls Museum',
                      'Nagrik Bank building, Rajkot',
                      'https://www.gujarattourism.com/content/dam/gujrattourism/images/june/Rottary-doll-Museum-banner.jpg',
                      4.9,
                    ),
                    placeCard(
                      context,
                      'Fun World',
                      'Race Course, Rajkot',
                      'https://funworldparks.com/wp-content/uploads/2023/09/banner-image.webp',
                      4.6,
                    ),
                    placeCard(
                      context,
                      'Gandhi Museum',
                      'Jubilee Garden',
                      'https://www.mkgandhi.org/images/mgm-rajkot.jpg',
                      4.8,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Popular Places
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Places',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 10),
              popularPlaceCard(
                context,
                'ISKCON Temple',
                'Kalawad Road',
                'https://iskconnews.org/media/images/2019/05-May/rajkot1.jpg',
                4.6,
              ),
              popularPlaceCard(
                context,
                'Ranjit Vilas Palace',
                'Vaedhman Nagar',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Wankaner-palace.png/640px-Wankaner-palace.png',
                4.9,
              ),
              popularPlaceCard(
                context,
                'Eldorado Fun Park',
                'Rajkot-Jamnagar Highway',
                'https://content.jdmagicbox.com/comp/rajkot/dc/0281px281.x281.1230892064x3w4w3.dc/catalogue/the-eldorado-targhadia-rajkot-amusement-parks-3ufalxc.jpg',
                4.7,
              ),
              popularPlaceCard(
                context,
                'BAPS Mandir',
                'Kalawad Road',
                'https://blogger.googleusercontent.com/img/a/AVvXsEjqwngH1MGp_wliehZUcUxIreo46HNY0eYhNNZkuJ72394ZrCKRdaY4PQJFQLuThhCr-YMJxxn00RxRYjsfP0JL71yXiyug31-wsPdoYq4C4yFwtbIYUm4vCy_EwEfGt_-N32QP0IHALaH5zP4C-1xltv178ljRagi4Fc3MaYvVZ6wYDjTLUZwXYxH5=s16000',
                4.8,
              ),
              popularPlaceCard(
                context,
                'Pradhyuman Park',
                'Race-course Road',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSM5abhZ6YTi695jc4_1QCCIxarlzp8KKLhQ&s',
                4.5,
              ),
              popularPlaceCard(
                context,
                'Ishwariya Park',
                'Rajkot-Jamnagar Highway',
                'https://media-cdn.tripadvisor.com/media/photo-s/16/76/9b/6f/img-20190203-235746-661.jpg',
                4.8,
              ),
              popularPlaceCard(
                context,
                'Ramkrishna Ashram',
                'Jagnath Plot',
                'https://www.gujarattourism.com/content/dam/gujrattourism/images/religious-sites/ramkrishna-mission/RamKrishna-Mission-Banner.jpg',
                4.9,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[300],
          foregroundColor: Colors.black,
        ),
      ),
    );
  }

  Widget placeCard(BuildContext context, String name, String location, String imageUrl, double rating) {
    return GestureDetector(
      onTap: () {
        // Navigate to InfoScreen with place details
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TravelApp(), // Navigate to InfoScreen
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(location),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 16),
                Text(rating.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget popularPlaceCard(BuildContext context, String name, String location, String imageUrl, double rating) {
    return GestureDetector(
      onTap: () {
        // Navigate to InfoScreen with place details
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TravelApp(), // Navigate to InfoScreen
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 120,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(location),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Text(rating.toString()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class RajkotScreen extends StatelessWidget {
  const RajkotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rajkot - The Cultural Heart of Saurashtra'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Main Image
            Image.network(
              'https://s3.india.com/wp-content/uploads/2024/05/Feature-Image_-Rajkot-1.jpg##image/jpg', // Replace with Rajkot city image
              width: double.infinity,
              height: 250.0,
              fit: BoxFit.cover,
            ),

            // Section: Overview
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Rajkot - The Cultural Heart of Saurashtra',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Rajkot, a city in Gujarat, is known for its rich culture, heritage, and the presence of industries. It is often called the "Cultural Capital of Saurashtra" due to its rich cultural heritage and historical significance. Rajkot is also known for its bustling markets, delicious food, and warm-hearted people.',
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
                'Rajkot was the capital of the princely state of Saurashtra during the colonial period. It played a significant role in the Indian independence movement, with key figures like Mahatma Gandhi and Sardar Vallabhbhai Patel associated with the city. Today, it continues to thrive as an industrial and cultural hub.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),

            // Top Attractions Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Top Attractions in Rajkot',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildAttractionCard(
              'Kaba Gandhi No Delo',
              'Kaba Gandhi No Delo, the childhood home of Mahatma Gandhi, has been preserved as a museum showcasing his life and legacy.',
              'https://www.gujarattourism.com/content/dam/gujrattourism/images/gandhi-circuit/mahatma-gandhi-museum-(alfred-high-school)/Mahatma-Gandhi-Museum-Rajkot-Thumbnail.jpg', // Image URL for Kaba Gandhi No Delo
            ),
            _buildAttractionCard(
              'Rajkot Clock Tower',
              'Rajkot Clock Tower is a landmark of the city, offering a glimpse into the city’s past with its Victorian-style architecture.',
              'https://www.researchgate.net/publication/369977392/figure/fig3/AS:11431281144972112@1681374542622/Gate-and-Tower-Gondal-Fig-22-Jam-Tower-Rajkot.png', // Image URL for Rajkot Clock Tower
            ),
            _buildAttractionCard(
              'Ranjit Vilas Palace',
              'The Ranjit Vilas Palace is a beautiful palace built during the colonial period, known for its stunning architecture and vast grounds.',
              'https://upload.wikimedia.org/wikipedia/commons/8/83/Wankaner-palace.png', // Image URL for Ranjit Vilas Palace
            ),

            // Famous Food Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Famous Foods in Rajkot',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildFoodItem('Khaman', 'A steamed and spongy savory dish made from gram flour, often served with chutney. A popular snack in Rajkot.', Icons.fastfood),
            _buildFoodItem('Fafda', 'A crunchy, fried snack made from chickpea flour, often paired with jalebi, a sweet delicacy.', Icons.fastfood),
            _buildFoodItem('Undhiyu', 'A traditional Gujarati mixed vegetable dish, often made in winter and served with puris.', Icons.fastfood),
            _buildFoodItem('Gulab Jamun', 'Deep-fried dough balls soaked in syrup, a popular dessert enjoyed throughout Rajkot.', Icons.fastfood),

            // Cultural Significance Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Cultural Significance of Rajkot',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Rajkot is known for its vibrant cultural life, especially during festivals like Navratri and Diwali. The city hosts cultural performances, dance events, and exhibitions that reflect the region’s rich tradition and history.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            _buildCulturalItem('Navratri Festival', 'Rajkot celebrates Navratri with grand Garba and Dandiya dances. The city becomes alive with music and festivities.', Icons.event),
            _buildCulturalItem('Diwali', 'Diwali in Rajkot is celebrated with light shows, fireworks, and sweets, creating a vibrant atmosphere throughout the city.', Icons.event),

            // Shopping Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Shopping in Rajkot',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Rajkot offers a wide variety of shopping experiences. From traditional Gujarati handicrafts to modern goods, markets like Sadar Bazar and the Rajkot City Market are ideal for shopping enthusiasts.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
            _buildShoppingItem('Sadar Bazar', 'A bustling market known for its traditional Gujarati goods, including clothing, textiles, and jewelry.', Icons.shopping_bag),
            _buildShoppingItem('Rajkot City Market', 'A central marketplace with everything from handicrafts to modern items, offering a diverse shopping experience.', Icons.shopping_bag),

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
                'Rajkot is a city that beautifully combines the past and the present. From its historical landmarks to its vibrant cultural celebrations and local cuisine, Rajkot offers a unique experience to all who visit.',
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

