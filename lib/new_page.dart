import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'main.dart';

class NewPage extends StatelessWidget {
  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: globalKey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Color(0xff078d92),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Hello',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 64, 24, 0),
                child: TextFormField(
                  validator: (String? value) {
                    if (value!.isEmpty) {
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Username',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: TextFormField(
                  validator: (String? value) {
                    if (!value!.contains('@')) {
                      return 'Please enter value';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  if (globalKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Color(0xff078d92),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  fixedSize: Size(350, 60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
