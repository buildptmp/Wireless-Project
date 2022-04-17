import 'package:flutter/material.dart';
import 'package:pjwireless/screen/home.dart';

class AppetiteRegister extends StatelessWidget {
  const AppetiteRegister({Key? key}) : super(key: key);

  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Appetite Register',
                style: TextStyle(fontSize: 20, fontFamily:'Raleway'),
              ),
              Image.asset(
                'assets/logo.png',
                //width: 100,
                //height: 100,
                fit: BoxFit.cover,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'E-mail',
                ),
              ),
              TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow, // Background color
                  ),
                  child: const Text('Register'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}