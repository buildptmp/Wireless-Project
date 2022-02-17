// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class RestaurantLogIn extends StatelessWidget {
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
                  Navigator.pushReplacementNamed(context, '/menu');
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
