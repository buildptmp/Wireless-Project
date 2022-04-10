import 'package:flutter/material.dart';


class RestaurantLogIn extends StatelessWidget {
  static var tag;

  const RestaurantLogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Appetite Log-in',
                style: Theme.of(context).textTheme.headline1,
              ),
              Image.asset(
                'images/logo.png',
                //width: 100,
                //height: 100,
                fit: BoxFit.cover,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'username',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'password',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('Log in'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              ),
              ElevatedButton(
                child: const Text('Register'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/register');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}