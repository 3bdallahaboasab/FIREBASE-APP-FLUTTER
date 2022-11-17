import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController serialController = TextEditingController();
    TextEditingController nameController = TextEditingController();

    TextEditingController colorController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              "add on mobile",
              style: TextStyle(fontSize: 30),
            ),
            Divider(
              height: 75,
            ),
            Text("enter the serial number"),
            TextField(
              controller: serialController,
            ),
            Text("enter the name "),
            TextField(
              controller: nameController,
            ),
            Text("enter the color number"),
            TextField(
              controller: colorController,
            ),
            ElevatedButton(
                onPressed: () {
                  CollectionReference db =
                      FirebaseFirestore.instance.collection("mobiles");

                  db.add({
                    "sernal_no": serialController.text,
                    "name": nameController.text,
                    "color": colorController.text
                  });
                },
                child: Text("add item"))
          ],
        ),
      ),
    );
  }
}
