import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OurStory extends StatefulWidget {
  const OurStory({super.key});

  @override
  State<OurStory> createState() => _OurStoryState();
}

class _OurStoryState extends State<OurStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 255, 223, 171),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: 300,
                  width: 900,
                  child: Image.asset(
                    'assets/ourstorylgo.jpeg',
                  ),
                ),
              ),
              Row(
 crossAxisAlignment : CrossAxisAlignment.start,
  children : [
     Image.asset("assets/sisterhood.JPG", height: 500, width: 200),
     
     Text("At Lush Temple, we believe in the transformative power of nature's bounty. Our holistic body care products are lovingly crafted with the purest ingredients, sourced sustainably from the earth's generous embrace. Each blend is a harmonious symphony of essential oils and botanical wonders, carefully concocted to soothe both body and spirit."),
  ]
)
            ],
          ))),
    );
  }
}