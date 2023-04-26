// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'shared/component.dart';
import 'home.dart';

class Login extends StatelessWidget {
  var FormKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Form(
        key: FormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Welcome Again',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            myFormField(
                controller: name,
                isPass: false,
                label: Text('Enter Your Name Please')),
            SizedBox(
              height: 20,
            ),
            myFormField(
                controller: password,
                isPass: true,
                label: Text('Enter Your Password Please')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    if (name.text == 'zaid' && password.text == '123456') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  child: Text('Login'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
