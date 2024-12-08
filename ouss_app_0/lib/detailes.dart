import 'package:flutter/material.dart';
class UserProfilePagee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              const Text(
                'House in Sfax for Rent ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.deepPurple,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              // Main Image
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Permet le défilement horizontal
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/img1.jpg',
                    height: 150,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10), // Espacement entre les images
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/img2.jpg',
                    height: 150,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10), // Espacement supplémentaire si nécessaire
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/img3.jpg',
                    height: 150,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/img4.jpg',
                    height: 150,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
              SizedBox(height: 20),
              // Details Section
              Text(
                'Details :',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    detailRow('Location', 'PPGC+6RW, Sfax', Icons.location_on),
                    detailRow('Price', '150 DT per place', Icons.attach_money),
                    detailRow('Gender', 'Female', Icons.person),
                    detailRow('Available Places', '3/4', Icons.event_seat),
                    detailRow('Type', 'S+2', Icons.home),
                  ],
                ),
              ),
              SizedBox(height: 30),
              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: Text('Publisher Info',
                    style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: Text('Interested',
                    style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              // Image List Section
            ],
          ),
        ),
      ),
    );
  }

  Widget detailRow(String title, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple),
          SizedBox(width: 10),
          Text(
            '$title: ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }


}
