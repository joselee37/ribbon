import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage(this._goToHome, {super.key});

  final void Function() _goToHome;

  void tryLogIn() {
    _goToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ribbon',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            const TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: tryLogIn, child: const Text('Sign In')),
            OutlinedButton(onPressed: () {}, child: const Text('Sign Up')),
          ],
        ),
      ),
    );
  }
}
