// Firebase
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lush_temple_app/model/user_model.dart';


class UserRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  
  Future<void> createUser(UserModel user, BuildContext context) async {
    try {
      await _db.collection("Users").add(user.toJson());
      // Show success notification
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Your account has been created."),
          backgroundColor: Colors.green.withOpacity(0.1),
          duration: const Duration(seconds: 2),
        ),
      );
    } catch (error, stackTrace) {
      // Show error notification
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("Something went wrong."),
          backgroundColor: Colors.red.withOpacity(0.1),
          duration: const Duration(seconds: 2),
        ),
      );
      print("Error: $error");
      print("Stack Trace: $stackTrace");
    }
  }
}
