import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(

        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Container(
            
          
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
            
            child: Column(

          
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
          icon: Align(
            alignment: Alignment.centerLeft,
            child: const Icon(Icons.arrow_back, color: Colors.purple)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
                const SizedBox(height: 30),
          
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/img1.jpg'), 
                ),
                const SizedBox(height: 16),
                const Text(
                  "ll_wes_ouss",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: List.generate(
                        5,
                        (index) => const Icon(Icons.star, color: Colors.amber),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text("Rate"),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text("Posted Houses : 4"),
                const Text("Rented Houses : 2"),
                const Text("City : Sfax"),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
                  ),
                  child: Text("Contact"),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
