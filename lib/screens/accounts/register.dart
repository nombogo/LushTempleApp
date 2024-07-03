import 'package:flutter/material.dart';
import 'package:lush_temple_app/model/user_model.dart';
import 'package:lush_temple_app/repo/user_repo.dart';
import 'package:lush_temple_app/screens/accounts/login.dart';
import 'package:lush_temple_app/screens/homepage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _userRepository = UserRepository();

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> registerUser() async {
    try {
      await _userRepository.createUser(
        UserModel(
          // Create a UserModel instance with email and password
          email: email.text.trim(),
          password: password.text, 
          firstName: '', 
          lastName: '', 
          phoneNo: '',
        ),
        context,
      );
      // If registration is successful, you can navigate to the home page or do any other necessary actions
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomePage(),
        ),
      );
    } catch (e) {
      // Handle registration errors
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 223, 171),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/ltlogo.jpg', width: 250, height: 250),
              const SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          controller: firstname,
                          decoration: const InputDecoration(
                            labelText: 'First Name',
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        TextFormField(
                          controller: lastname,
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        TextFormField(
                          controller: email,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        TextFormField(
                          controller: password,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: registerUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 69, 43, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Login(),
                    ),
                  );
                },
                child: const Text(
                  'Already have an account?  Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
