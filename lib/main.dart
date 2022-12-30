import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      // appBar: AppBar(
      //   title: const Text(
      //     'News App',
      //     style: TextStyle(fontWeight: FontWeight.w800),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.blue,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            'Welcome',
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
          )),
          const Center(
              child: Text(
            'to NewsEverywhere',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w400),
          )),
          Lottie.asset("assets/94515-man-on-rocket.json"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple,
                  minimumSize: const Size(250, 40)),
              child: const Text('Login')),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(250, 40)),
              child: const Text('Register'))
        ],
      ),
    );
  }
}
