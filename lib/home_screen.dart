import 'package:flutter/material.dart';
import 'new_page.dart';

class HomeScreen extends StatelessWidget {
  String? name;
  String? email;
  String? phone;
  String? password;

  HomeScreen({this.name, this.email, this.phone, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email: ${email ?? ''}'),
            Text('Password: ${password ?? ''}'),
            // Back Button
            Center(
              child: ElevatedButton(
                child: Text('Go'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewPage(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
