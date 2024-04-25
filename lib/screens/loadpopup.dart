import 'package:flutter/material.dart';
import 'package:lush_temple_app/screens/homepage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 223, 171),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80, bottom: 40, top: 160),
            child: Image.asset('assets/ltlogo.jpg'),           
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
          child: Text(
            "Experience the Lush",
            textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Papyrus',
            color: Color.fromARGB(255, 69, 43, 0),
          ),
          ),
          ),
          Padding(padding: const EdgeInsets.all(80.0),
          child: Image.asset('/assets/rightflower.jpeg')
          ),
      const SizedBox(height: 10),
            SizedBox(
              width: 200.0, // Make button full width
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ElevatedButton(onPressed: (){
        Navigator.push
        (context, MaterialPageRoute
        (builder: (BuildContext context) => const HomePage(),
        ));
      },
     
      style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(115, 63, 0, .55),
                    padding: const EdgeInsets.symmetric(vertical: 11), // Increase vertical padding
                  ),
                   child: const Text("explore", 
                   textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Papyrus',
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
