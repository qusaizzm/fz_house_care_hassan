import 'package:flutter/material.dart';
import 'package:fz_hassan/Features/home/home.dart';
import 'package:fz_hassan/init/constants.dart';
import 'package:fz_hassan/init/push.dart';

class MyBTN extends StatelessWidget {
  const MyBTN({super.key, required this.go, required this.txt});
  final go;
  final txt;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      elevation: 5.0,
      child: MaterialButton(
        onPressed: () => onPush(context: context, go: go),
        minWidth: 150.0,
        height: 50.0,
        color: kPrimaryColor,
        child: Text(
          txt,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
