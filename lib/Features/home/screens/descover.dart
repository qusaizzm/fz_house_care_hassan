import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fz_hassan/Features/auth/widget/custom_textfield.dart';
import 'package:fz_hassan/Features/home/screens/descover_details.dart';
import 'package:fz_hassan/init/appbar.dart';
import 'package:fz_hassan/init/constants.dart';
import 'package:fz_hassan/init/push.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
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
          const SizedBox(
            height: 15.0,
          ),
          // List
          // BTN TOP
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: kPrimaryColor),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.magnifyingGlass,
                          color: kPrimaryColor,
                          size: 20,
                        ),
                        SizedBox(width: 6),
                        Text(
                          "Search",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: kPrimaryColor),
                  ),
                  child: const Center(
                    child: Text(
                      "Group 3",
                      style: TextStyle(color: kBgColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: kPrimaryColor),
                  ),
                  child: const Center(
                    child: Text(
                      "Request 23",
                      style: TextStyle(color: kBgColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 6),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(
            margin: const EdgeInsets.only(right: 16),
            height: 1,
            width: double.infinity,
            color: kTxtColor,
          ),
          const SizedBox(height: 20.0),

          const Text(
            "Discover New",
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, // color: kTxtColor,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            "List Viwed",
            style: TextStyle(
              color: kTxtColor,
              fontSize: 16, fontWeight: FontWeight.bold, // color: kTxtColor,
            ),
          ),
          const SizedBox(height: 10.0),
          ListCare(),
          ListCare(),
          ListCare(),
          ListCare(),
          ListCare(),
          ListCare(),

          const SizedBox(
            height: 60.0,
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ListCare() {
    return Row(
      children: [
        Expanded(child: ListCareItem(name: "Qusestions")),
        Expanded(child: ListCareItem(name: "Qusestions")),
      ],
    );
  }

  Widget ListCareItem({required name, img}) {
    return InkWell(
      onTap: () => onPush(context: context, go: DiscoverDetails()),
      child: Container(
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
              "1,500 viewers",
              style: TextStyle(color: kTxtColor, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
