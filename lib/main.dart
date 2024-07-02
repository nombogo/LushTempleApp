import 'package:flutter/material.dart';
import 'package:lush_temple_app/model/cart_model.dart';
import 'package:lush_temple_app/screens/loadpopup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';


// Import DefaultFirebaseOptions

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(
    ChangeNotifierProvider<CartModel>(
      create: (context) => CartModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}); 

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoadingPage(), // Assuming LoadingPage is your initial page
      ),
    );
  }
}
