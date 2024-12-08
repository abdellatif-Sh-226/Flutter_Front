import 'package:flutter/material.dart';
import 'package:ouss_app_0/components/header.dart';
class HouseListPage extends StatelessWidget {
  const HouseListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(height: 25),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(size: 32, label: "Hello User,"),
                 SizedBox(height: 10,),
                  Text(
                  'Herewe will help you find a house ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
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
                prefixIcon: const Icon(Icons.search, color: Colors.black54),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.black54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                
              ),
            ),
        ),
          const SizedBox(height: 40),
            for (int i = 1; i <= 4; i++) 
              HouseCard(
                imagePath: 'assets/img$i.jpg', 
                price: '600 DT',
                location: 'Hay Lahbib',
                state: 'Not rented',
              ),
          ],
        ),
      ),
      ),
    );
  }
}

class HouseCard extends StatelessWidget {
  final String imagePath;
  final String price;
  final String location;
  final String state;

  const HouseCard({
    required this.imagePath,
    required this.price,
    required this.location,
    required this.state,
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5, 
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'House in Sfax for rent',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text('Price: $price'),
                  Text('Location: $location'),
                  Text('State: $state'),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      ),
                      onPressed: () {
                      },
                      child: const Text(
                        'View',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}
