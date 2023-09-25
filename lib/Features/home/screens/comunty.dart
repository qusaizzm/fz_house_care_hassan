import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fz_hassan/Features/auth/widget/custom_textfield.dart';
import 'package:fz_hassan/init/appbar.dart';
import 'package:fz_hassan/init/constants.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        leading: const FaIcon(
          Icons.arrow_back_ios,
          color: kBgColor,
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: kBgColor),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset("assets/avatars/avatar_2.jpg",
                  width: 44, height: 44),
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 15, top: 15.0),
        children: <Widget>[
          const Text(
            "Community",
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, // color: kTxtColor,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),

// BTN TOP
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  // color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: kPrimaryColor),
                ),
                child: const Center(
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: kPrimaryColor,
                        size: 20,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Create",
                    style: TextStyle(color: kBgColor),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(
            margin: const EdgeInsets.only(right: 16),
            height: 1,
            width: double.infinity,
            color: kTxtColor,
          ),
          const SizedBox(height: 10.0),

// List Viwed
          const Text(
            "List Viwed",
            style: TextStyle(
              color: kTxtColor,
              fontSize: 16, fontWeight: FontWeight.bold, // color: kTxtColor,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(child: ListCare(name: "Baby care")),
              Expanded(child: ListCare(name: "Eat well")),
              Expanded(child: ListCare(name: "Dr Qater")),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(child: ListCare(name: "Emergency")),
              Expanded(child: ListCare(name: "Healthy mind")),
              Expanded(child: ListCare(name: "Pregnancy tips")),
            ],
          ),
          const SizedBox(height: 16.0),
          Container(
            margin: const EdgeInsets.only(right: 16),
            height: 1,
            width: double.infinity,
            color: kTxtColor,
          ),
          const SizedBox(height: 16.0),

// Suggested Community
          const Text(
            "Suggested Community",
            style: TextStyle(
              color: kTxtColor,
              fontSize: 16, fontWeight: FontWeight.bold, // color: kTxtColor,
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext ctxt, int index) {
                return SuggList(name: "Heart desiese");
              },
            ),
          ),

          const SizedBox(
            height: 60.0,
          ),
        ],
      ),
    );
  }

  Container SuggList({required name, img}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: kPrimaryColor, width: 1),
              image: DecorationImage(
                  image: img ?? const AssetImage('assets/img/login.png'),
                  fit: BoxFit.fitHeight),
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            name,
            style: const TextStyle(color: kTxtColor),
          ),
          const Text(
            "3.2 k members",
            style: TextStyle(color: kTxtColor, fontSize: 12),
          ),
          const SizedBox(height: 6.0),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kPrimaryColor, width: 1),
            ),
            child: const Center(
              child: Text(
                "Join",
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container ListCare({required name, img}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kPrimaryColor, width: 1),
              image: DecorationImage(
                image: img ?? const AssetImage('assets/img/login.png'),
              ),
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            name,
            style: const TextStyle(color: kTxtColor),
          ),
          const Text(
            "3.2 k members",
            style: TextStyle(color: kTxtColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
