import 'package:flutter/material.dart';
import 'package:national_infotech/bca.dart';
import 'package:national_infotech/csit.dart';
import 'package:national_infotech/plus_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("National Infotech"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Programs Offered",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => PlusTwo()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "+2",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BscCsit(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Bsc. CSIT",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Bca(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "BCA",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
