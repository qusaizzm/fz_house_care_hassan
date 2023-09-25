import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

Container Txtox({required txt, required icon}) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kPrimaryColor, width: 1)
        // image: DecorationImage(
        //   image: AssetImage('assets/img/logo_apple.png'),
        // ),
        ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 50),
        Container(width: 20, child: FaIcon(icon)),
        const SizedBox(width: 12),
        Text("continue with $txt"),
      ],
    ),
  );
}
