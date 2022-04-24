import 'package:flutter/material.dart';

class PlusTwo extends StatelessWidget {
  PlusTwo({Key? key}) : super(key: key);

  final List plusTwoStudents = [
    {
      "name": "Saddam Husen",
      "image":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
    },
    {
      "name": "Mustafa Hawari",
      "image":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
    },
    {
      "name": "Anish Husen",
      "image":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
    },
    {
      "name": "Bikash Husen",
      "image":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
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
                                image: NetworkImage(
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
