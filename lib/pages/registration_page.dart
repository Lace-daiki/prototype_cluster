import 'package:flutter/material.dart';

import 'home_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController areaController = TextEditingController();
  TextEditingController radiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Register Local Area",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                TextField(
                  controller: areaController,
                  decoration: InputDecoration(labelText: 'Local Area'),
                ),
                SizedBox(height: 29.0),
                TextField(
                  controller: radiusController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Mile Radius'),
                ),
                SizedBox(height: 100.0),
                Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Save the registration details and navigate to home screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            area: areaController.text,
                            radius: int.parse(radiusController.text),
                          ),
                        ),
                      );
                    },
                    child: Text('Register'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
