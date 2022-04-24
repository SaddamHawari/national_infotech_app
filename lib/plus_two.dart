import 'package:flutter/material.dart';

class PlusTwo extends StatelessWidget {
  PlusTwo({Key? key}) : super(key: key);

  final List plusTwoStudents = [
    {
      "name": "Saddam Husen",
      "image":
          "images/ni_image.jpg"
    },
    {
      "name": "Mustafa Hawari",
      "image":
          "images/ni_image.jpg"
    },
    {
      "name": "Anish Husen",
      "image":
          "images/ni_image.jpg"
    },
    {
      "name": "Bikash Husen",
      "image":
          "images/ni_image.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("+2"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: plusTwoStudents.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                    children: [
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  plusTwoStudents[index]["image"],
                                ),

                              fit: BoxFit.cover
                              ),
                              shape: BoxShape.circle,
                              color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          plusTwoStudents[index]["name"],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
            ),),
      ),
    );
  }
}
