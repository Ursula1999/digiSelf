import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  TextEditingController userIDcontroller = new TextEditingController();
  TextEditingController idcontroller = new TextEditingController();
  TextEditingController titlecontroller = new TextEditingController();
  TextEditingController bodycontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10, vertical:30),
        child: Column(
          children: [
            TextFormField(
              controller: userIDcontroller,
               decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'usrID',
              ),
            ),

            TextFormField(
              controller: idcontroller,
               decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'ID',
              ),
            ),

            TextFormField(
              controller: titlecontroller,
               decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Title',
              ),
            ),

            TextFormField(
              controller: bodycontroller,
               decoration: InputDecoration(                
                border: OutlineInputBorder(),
                hintText: 'Body',
              ),
            ),

            ElevatedButton(onPressed: () async {},
             child:Text("Check"),)
          ],
        ),
      ),
      
    );
  }
}