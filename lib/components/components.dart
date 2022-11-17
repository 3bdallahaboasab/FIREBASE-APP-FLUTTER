import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildContanerButton({
  required String text,
  required Color color,
}) =>
    Center(
      child: Container(
        width: 150,
        height: 70,
        child: Center(
          child: Text(
            text,
            style:
                TextStyle(fontSize: 20, fontFamily: "Pro", color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
