/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'plantrip.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final TextEditingController _budgetController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _travelerTypeController = TextEditingController();
  final TextEditingController _numTravelersController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Budget input
                Text('Budget', style: TextStyle(fontSize: 18, color: Colors.blueAccent)),
                SizedBox(height: 10),
                TextField(
                  controller: _budgetController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your budget',
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                SizedBox(height: 20),
                // City input
                Text('City', style: TextStyle(fontSize: 18, color: Colors.blueAccent)),
                SizedBox(height: 10),
                TextField(
                  controller: _cityController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the city you want to visit',
                  ),
                ),
                SizedBox(height: 20),
                // Traveler type input
                Text('Type of Travelers', style: TextStyle(fontSize: 18, color: Colors.blueAccent)),
                SizedBox(height: 10),
                TextField(
                  controller: _travelerTypeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the type of travelers (e.g., Family, Friends)',
                  ),
                ),
                SizedBox(height: 20),
                // Number of travelers input
                Text('Number of Travelers', style: TextStyle(fontSize: 18, color: Colors.blueAccent)),
                SizedBox(height: 10),
                TextField(
                  controller: _numTravelersController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter number of travelers',
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPage(
                            budget: _budgetController.text,
                            city: _cityController.text,
                            travelerType: _travelerTypeController.text,
                            numTravelers: _numTravelersController.text,
                          ),
                        ),
                      );
                    },
                    child: Text('Plan My Trip'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'plantrip.dart'; // Make sure this import is here
import 'login2.dart'; 

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final TextEditingController _budgetController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _travelerTypeController = TextEditingController();
  final TextEditingController _numTravelersController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to the LoginScreen when back button is pressed
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
        return false; // Prevent the default back button behavior
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Filters'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Budget input
                  _buildInputField(
                    label: 'Budget',
                    controller: _budgetController,
                    hint: 'Enter your budget',
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                  const SizedBox(height: 20),

                  // City input
                  _buildInputField(
                    label: 'City',
                    controller: _cityController,
                    hint: 'Enter the city you want to visit',
                  ),
                  const SizedBox(height: 20),

                  // Traveler type input
                  _buildInputField(
                    label: 'Type of Travelers',
                    controller: _travelerTypeController,
                    hint: 'Enter the type of travelers (e.g., Family, Friends)',
                  ),
                  const SizedBox(height: 20),

                  // Number of travelers input
                  _buildInputField(
                    label: 'Number of Travelers',
                    controller: _numTravelersController,
                    hint: 'Enter number of travelers',
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                  const SizedBox(height: 30),

                  // Plan My Trip button
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent, // Correct property
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatPage(
                              budget: _budgetController.text,
                              city: _cityController.text,
                              travelerType: _travelerTypeController.text,
                              numTravelers: _numTravelersController.text,
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        'Plan My Trip',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required TextEditingController controller,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none,
            ),
            hintText: hint,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
        ),
      ],
    );
  }
}
