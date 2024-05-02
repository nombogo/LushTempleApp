import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class OurStory extends StatefulWidget {
  const OurStory({super.key});

  @override
  State<OurStory> createState() => _OurStoryState();
}

class _OurStoryState extends State<OurStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the shadow
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: 180,
                  width: double.infinity, // Make the image span the full width
                  child: Image.asset(
                    'assets/ourstorylgo.jpeg',
                    fit: BoxFit.cover, // Cover the entire container
                  ),
                ),
              ),
              Divider(
                color: Color.fromRGBO(115, 63, 0, .55),
                thickness: 2,
                height: 20,
                indent: 40,
                endIndent: 40,
              ),
              Padding(
                padding: EdgeInsets.all(24.0), // Add padding around the text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Story",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[900],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "The women that make up Lush Temple are the most experienced soap and candle makers of the land of Lush Temple. Founded in Nairobi, Kenya, we believe in the transformative power of nature's bounty. Our holistic body care products are lovingly crafted with the purest ingredients, sourced sustainably from the earth's generous embrace. Each blend is a harmonious symphony of essential oils and botanical wonders, carefully concocted to soothe both body and spirit.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.balooTamma2(
                        fontSize: 20,
                        color: Colors.brown[800],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/sisterhood.JPG",
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Sisterhood",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown[900],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/soapmaking.JPG",
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Soap Making",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown[900],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Here at Lush Temple, we meet the Sustainable Development Goal #3 of good health and wellness since our products focus on the health of our clients who may deal with particular skin conditions like eczema, hyperpigmentation. Products for people who need stress relieving self-care products or even for ones who enjoy the ambience and the glorious effects our Lush Temple products give our clients.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.balooTamma2(
                        fontSize: 20,
                        color: Colors.brown[800],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
