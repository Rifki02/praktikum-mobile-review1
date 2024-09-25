import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final titles = ['Bike', 'Boat', 'Bus', 'car'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, nomor) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("http://picsum.photos/200/300?Images=$nomor"),
              ),
              title: Text(titles[nomor]),
            ),
          );
        },
      ),
    );
  }
}      // ListView(
      //   // children: [
      //   //   ListTile(
      //   //     // leading: Icon(Icons.sunny)
      //   //     leading: CircleAvatar(
      //   //       backgroundImage: AssetImage("matahari.jpg"),
      //   //     ),
      //   //     title: Text("Sun"),
      //   //     trailing: Icon(Icons.keyboard_arrow_right),
      //   //   ),
      //   //   ListTile(
      //   //     leading: Icon(Icons.brightness_3),
      //   //     title: Text("Moon"),
      //   //     trailing: Icon(Icons.keyboard_arrow_right),
      //   //   ),
      //   //   ListTile(
      //   //     leading: Icon(Icons.star),
      //   //     title: Text("Starx"),
      //   //     trailing: Icon(Icons.keyboard_arrow_right),
      //   //   ),
      //   // ],
      // )
      // Center(
      // ListView(
      //   children: [
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.red,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.blue,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.green,
      //     ),
      //   ],
      // ),
      // GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 4,
      //   ),
      //   children: [
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     // color: Colors.red,
      //     decoration:const BoxDecoration(
      //       // color: Colors.red,
      //       image: DecorationImage(
      //         image: AssetImage("jet.png"))          ),

      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.blue,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.green,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.black,
      //     ),
      //   ],
      // ),
    //   child: Container(
    //     width: 200,
    //     height: 200,
    //     decoration: const BoxDecoration(
    //     image: DecorationImage(
    //     image: AssetImage("assets/jet.png")
    //     ),
    //   ),
    //   ),
    // ),