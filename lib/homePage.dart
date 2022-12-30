// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/description.dart';
import 'package:news_app/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgrndColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrndColor,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (backgrndColor == Colors.white) {
                    backgrndColor = Colors.purpleAccent;
                  } else {
                    backgrndColor = Colors.white;
                  }
                });
              },
              icon: Icon(Icons.color_lens))
        ],
        title: const Text('NewsEverywhere'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      drawer: SafeArea(
          child: Drawer(
        // backgroundColor: Colors.white30,
        child: Column(children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: ListTile(
                title: Text(
                  'NewsEverywhere',
                  style: TextStyle(fontSize: 30),
                ),
              )),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.verified_user),
            selectedColor: Colors.blueGrey,
            title: const Text('Profile'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.settings),
            //trailing: Icon(Icons.settings),
            selectedColor: Colors.blueGrey,
            title: const Text('Setting'),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext builder) {
                return const LoginPage();
              }));
            },
            selectedColor: Colors.blueGrey,
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
          ),
        ]),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Wrap(
                spacing: 15,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('Politics'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('Education'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('Entertainment'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('ExtraCurricular'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder()),
                    child: const Text('Business'),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext builder) {
                  return const DescriptionPage(
                    title: "What's happening in Business?",
                    desImage: 'assets/91405-business-growth.json',
                  );
                }));
              },
              child: Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(
                            2,
                            2,
                          ))
                    ]),
                child: Column(
                  children: [
                    Lottie.asset('assets/91405-business-growth.json'),
                    const ListTile(
                      title: Text("What's happening in Business?"),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext builder) {
                  return const DescriptionPage(
                    title: "What's happening in Politics?",
                    desImage: 'assets/72887-public-speaker.json',
                  );
                }));
              },
              child: Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(
                            2,
                            2,
                          ))
                    ]),
                child: Column(
                  children: [
                    Lottie.asset('assets/72887-public-speaker.json'),
                    const ListTile(
                      title: Text("What's happening in Politics?"),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext builder) {
                  return const DescriptionPage(
                    title: "What's happening in the world of entertainment?",
                    desImage: "assets/72235-watch-a-movie-with-popcorn.json",
                  );
                }));
              },
              child: Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(
                            2,
                            2,
                          ))
                    ]),
                child: Column(
                  children: [
                    Lottie.asset(
                        'assets/72235-watch-a-movie-with-popcorn.json'),
                    const ListTile(
                      title: Text(
                          "What's happening in the world of entertainment?"),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
