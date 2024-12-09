import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for input formatters
class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  _SignInState createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  bool isStudent = false; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcom back ,",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "happy to see u again,",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 50),
                CustomTextField(hintText: "Email"),
                CustomTextField(hintText: "Password", obscureText: true),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                
                    Text("Forget Password?"),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print("Student status: $isStudent");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shadowColor: Colors.black,
                    elevation: 10,
                  ),
                  child: Text("Login", style: TextStyle(fontSize: 18,color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  CustomTextField({required this.hintText, this.obscureText = false, this.inputFormatters, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // direction du shadow
            ),
          ],
        ),
        child: TextField(
          obscureText: obscureText,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
        ),
      ),
    );
  }
}
