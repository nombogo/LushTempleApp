import 'package:flutter/material.dart';
import 'package:lush_temple_app/screens/accounts/login.dart';

import 'package:google_fonts/google_fonts.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 223, 171),
      body: Column(
        children: [
         Padding(
  padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 130, top: 220),
  child: Image.asset('assets/ltlogo.jpg'),           
),
Padding(
  padding: EdgeInsets.only(left: 50, right: 50, bottom: 110, top: 0.50),
  child: Text(
    "Experience the Lush",
    textAlign: TextAlign.center,
    style: GoogleFonts.aboreto(
      fontSize: 24,
      color: Color.fromARGB(255, 69, 43, 0),
    ),
  ),
),

          
      const SizedBox(height: 10),
            SizedBox(
              width: 200.0, // Make button full width
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ElevatedButton(onPressed: (){
        Navigator.push
        (context, MaterialPageRoute
        (builder: (BuildContext context) => const Login(),
        ));
      },
     
      style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(115, 63, 0, .55),
                    padding: const EdgeInsets.symmetric(vertical: 11), // Increase vertical padding
                  ),
                   child: const Text("Get Started", 
                   textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 27,
            fontFamily: 'Gothic',
            color: Color.fromARGB(255, 69, 43, 0),),
      ),
              ),
            ),
            ),
        ],
      ),
    );
  }
}
