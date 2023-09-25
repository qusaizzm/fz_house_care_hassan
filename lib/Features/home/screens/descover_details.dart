import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fz_hassan/Features/auth/widget/custom_textfield.dart';
import 'package:fz_hassan/init/appbar.dart';
import 'package:fz_hassan/init/constants.dart';

class DiscoverDetails extends StatefulWidget {
  const DiscoverDetails({super.key});

  @override
  State<DiscoverDetails> createState() => _DiscoverDetailsState();
}

class _DiscoverDetailsState extends State<DiscoverDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        leading:  InkWell(
          onTap: () => Navigator.pop(context),
          child:const FaIcon(
          Icons.arrow_back_ios,
          color: kBgColor,
        ),
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
            "DiscoverDetails New",
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, // color: kTxtColor,
            ),
          ),
          const SizedBox(height: 10.0),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    // border: Border.all(color: kPrimaryColor, width: 1),
                    image: const DecorationImage(
                        image: AssetImage('assets/img/login.png'),
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Questions",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold, // color: kTxtColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
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
                        const SizedBox(width: 10),
                        const Text(
                          "Hassan_mu",
                          style: TextStyle(color: kTxtColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.all(4),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: kPrimaryColor, width: 1),
                      ),
                      child: const Center(
                        child: Text(
                          "Follow",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const Text(
            "Questions Questions Questions Questions Questions?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            ktxtRandom + ktxtRandom + ktxtRandom,
            style: const TextStyle(
              color: kTxtColor,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
        ],
      ),
    );
  }
}
