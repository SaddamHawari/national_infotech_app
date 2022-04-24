import 'package:flutter/material.dart';

class Bca extends StatelessWidget {
  Bca({Key? key}) : super(key: key);

  final List bcaStudent = [
    {
      "name": "Saddam Husen bca",
      "image":
          "images/ni_image.jpg"
    },
    {
      "name": "Mustafa Hawari bca",
      "image":
          "images/ni_image.jpg"
    },
    {
      "name": "Anish Husen bca",
      "image":
          "images/ni_image.jpg"
    },
    {
      "name": "Bikash Husen bca",
      "image":
          "images/ni_image.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BCA"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: bcaStudent.length,
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
                                  bcaStudent[index]["image"],
                                ),

                              fit: BoxFit.cover
                              ),
                              shape: BoxShape.circle,
                              color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          bcaStudent[index]["name"],
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
