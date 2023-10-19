import 'package:flutter/material.dart';
import 'package:task_4/home_screa.dart';
import 'package:task_4/login_screan.dart';
import 'package:task_4/main.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Chat',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            Image.asset(
              'assets/images/live-chat-icon-7413.png',
              height: 100,
              width: 100,
            ),
            Text(
              'App',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'Create an account',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 50,
        ),
        textFormFieldWidget('Name', Icons.person),
        textFormFieldWidget('Email', Icons.email),
        textFormFieldWidget('Password', Icons.lock),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return Home();
                },
              ));
            },
            child: Text('Register'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('if you have an account'),
            SizedBox(
              width: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return LoginScrean();
                    },
                  ));
                },
                child: Text('Login now', style: TextStyle(color: Colors.blue))),
          ],
        )
      ]),
    );
  }
}

textFormFieldWidget(String text, IconData icon) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextFormField(
        decoration: InputDecoration(
      prefixIcon: Icon(icon),
      hintText: text,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: BorderSide(color: Colors.blue, width: 2),
      ),
    )),
  );
}
