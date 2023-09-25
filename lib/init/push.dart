import 'package:flutter/material.dart';

onPush({required context, required go}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => go),
  );
}
