import 'package:flutter/material.dart';
import 'package:fz_hassan/init/constants.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({
    Key? key,
    this.hint = "",
    this.prefix,
    this.suffix,
    this.controller,
    this.readOnly = false,
  }) : super(key: key);

  final String hint;
  final Widget? prefix;
  final Widget? suffix;
  final bool readOnly;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: suffix,
          hintText: hint,
          fillColor: kBgColor,
          filled: true,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: kPrimaryColor, width: 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
    //  Container(
    //   alignment: Alignment.center,
    //   // padding: const EdgeInsets.only(bottom: 3),
    //   height: 40,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     border: Border.all(color: kPrimaryColor),
    //     borderRadius: BorderRadius.circular(10),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey.withOpacity(0.05),
    //         spreadRadius: .5,
    //         blurRadius: .5,
    //         offset: const Offset(0, 1),
    //       ),
    //     ],
    //   ),
    //   child: Center(
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: TextField(
    //             readOnly: readOnly,
    //             controller: controller,
    //             decoration: InputDecoration(
    //               prefixIcon: prefix,
    //               suffixIcon: suffix,
    //               border: InputBorder.none,
    //               hintText: hint,
    //               hintStyle: const TextStyle(
    //                 color: Colors.grey,
    //                 fontSize: 15,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
