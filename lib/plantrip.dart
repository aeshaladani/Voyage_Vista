

import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String budget;
  final String city;
  final String travelerType;
  final String numTravelers;

  const ChatPage({
    super.key,
    required this.budget,
    required this.city,
    required this.travelerType,
    required this.numTravelers,
  });

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  List<String> messages = [];

  // Static trip details
  final String tripDetails = """
Your Trip Details:                                                                                        
- Cities: Rajkot, Ahmedabad                                                                                 
- Budget: ₹5000                                                                                 
- Type: Family                                                                                 
Day 1: Explore Rajkot:                                                                                 
Morning: Visit Jubilee Garden and Watson Museum.                                                                                 
Afternoon: Enjoy Gujarati Thali at a local restaurant.                                                                         
Evening: Explore Rotary Dolls Museum and shop for handicrafts.                                                                                 
Day 2: Discover Ahmedabad:                                                                                 
Morning: Visit Sabarmati Ashram and Adalaj Stepwell.                                                                                 
Afternoon: Try street food at Manek Chowk.                                                                                 
Evening: Relax at Sabarmati Riverfront.                                                                                 
Budget Allocation:                                                                                 
Travel: ₹1500                                                                                 
Food: ₹1000                                                                                 
Accommodation: ₹2000                                                                                 
Miscellaneous: ₹500                                                                                 
Enjoy your trip! Make lasting memories with your family.
""";

  void _sendMessage() {
    setState(() {
      messages.add(tripDetails); // Add the static trip details to the chat
      _messageController.clear(); // Clear the input field
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Your Planned Trip'),
      ),
      body: Column(
        children: [
          // Display chat messages
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      messages[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          // Input field and send button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.blueAccent),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
