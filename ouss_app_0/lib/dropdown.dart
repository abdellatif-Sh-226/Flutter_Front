import 'package:flutter/material.dart';
class DropdownForm extends StatefulWidget {
  @override
  _DropdownFormState createState() => _DropdownFormState();
}
class _DropdownFormState extends State<DropdownForm> {
  // Variables for selected values
  String? selectedType;
  String? selectedGender;

  // Lists for dropdown menus
  final List<String> typeOptions = ["S+1", "S+2", "S+3"];
  final List<String> genderOptions = ["Female", "Male"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Post a House',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 40),

        // Location Input
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3), // Shadow position
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Location',
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 84, 84, 84),
              ),
              suffixIcon: const Icon(Icons.location_on),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white, // Background color
            ),
          ),
        ),
        const SizedBox(height: 15),

        // Type Dropdown
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: 'Type',
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 84, 84, 84),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            value: selectedType,
            items: typeOptions.map((type) {
              return DropdownMenuItem<String>(
                value: type,
                child: Text(type),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedType = value;
              });
            },
          ),
        ),
        const SizedBox(height: 15),

        // Gender Dropdown
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: 'Gender',
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 84, 84, 84),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            value: selectedGender,
            items: genderOptions.map((gender) {
              return DropdownMenuItem<String>(
                value: gender,
                child: Text(gender),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedGender = value;
              });
            },
          ),
        ),
        const SizedBox(height: 15),

        // House Rent Input
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'How do you want to rent the house',
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 84, 84, 84),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 15),

        // More Infos Input
        const Text('More infos:'),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Type more infos',
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 84, 84, 84),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 15),

        // Upload Photos
        const Row(
          children: [
            Icon(
              Icons.image,
              color: Colors.purple,
            ),
            SizedBox(width: 10),
            Text(
              'Upload photos',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),

        // Submit Button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          onPressed: () {
            // Submit button logic
          },
          child: const Text(
            'Submit',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
