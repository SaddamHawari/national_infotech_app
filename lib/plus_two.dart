import 'package:flutter/material.dart';
import 'package:national_infotech/models/student_info_model.dart';
import 'package:national_infotech/network/services.dart';

class PlusTwo extends StatefulWidget {
  PlusTwo({Key? key}) : super(key: key);

  @override
  State<PlusTwo> createState() => _PlusTwoState();
}

class _PlusTwoState extends State<PlusTwo> {
  List<StudentInfoModel> students = [];
  bool isLoading = true;
  

  @override
  void initState() {
    super.initState();
    ApiCaller.getDataFromApi("plusTwo").then((value) {
      if(value.isNotEmpty) {
        setState(() {
          
        students = value;
        isLoading = false;
        });
        print(students);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("+2"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: isLoading? Center(child: CircularProgressIndicator(),): Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: students.length,
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
                                  students[index].image!,
                                ),

                              fit: BoxFit.cover
                              ),
                              shape: BoxShape.circle,
                              color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          students[index].name!,
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
