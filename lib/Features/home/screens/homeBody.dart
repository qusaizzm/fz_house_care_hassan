import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fz_hassan/Features/auth/widget/custom_textfield.dart';
import 'package:fz_hassan/init/appbar.dart';
import 'package:fz_hassan/init/constants.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final avatars = [1, 3, 4, 5, 6];

  @override
  void initState() {
    avatars.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        leading: const FaIcon(
          FontAwesomeIcons.magnifyingGlass,
          color: kBgColor,
        ),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset("assets/avatars/avatar_2.jpg",
                width: 44, height: 44),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 15, top: 15.0),
        children: <Widget>[
          const Text(
            "Stories",
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, // color: kTxtColor,
            ),
          ),
          Container(
            height: 75,
            child: ListView.builder(
              itemCount: avatars.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext ctxt, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4, top: 8, left: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(width: 3, color: kPrimaryColor),
                    ),
                    child: ClipRRect(
                      key: Key(index.toString()),
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                          "assets/avatars/avatar_${avatars[index]}.jpg",
                          ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CustomTextBox(hint: "What would you like to ask or share?"),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                children: [
                  Icon(Icons.question_mark),
                  Text("Ask"),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 40,
                width: 3,
                color: kTxtColor,
              ),
              const Column(
                children: [
                  Icon(Icons.post_add),
                  Text("Post"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 18.0,
          ),

          // Posts
          PostItems(),
          PostItems(),
          PostItems(),
          const SizedBox(
            height: 60.0,
          ),
        ],
      ),
    );
  }

  Padding PostItems() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 16.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: .5,
              blurRadius: .5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Image.asset("assets/avatars/avatar_2.jpg",
                                width: 44, height: 44),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hassan_mu",
                          style: TextStyle(color: kTxtColor),
                        ),
                        Text(
                          "Hospital",
                          style: TextStyle(fontSize: 12, color: kTxtColor),
                        ),
                      ],
                    ),
                    const SizedBox(width: 17),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: kPrimaryColor, width: 1),
                      ),
                      child: const Text(
                        "Add",
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    )
                  ],
                ),
                Text(
                  "30 min",
                  style: TextStyle(color: kTxtColor),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 180,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kPrimaryColor, width: 1),
                      image: const DecorationImage(
                        image: AssetImage('assets/img/login.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 180,
                    // padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Post Title",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          ktxtRandom,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: kTxtColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FooterPost("Like", FontAwesomeIcons.thumbsUp),
                FooterPost("Comment", FontAwesomeIcons.comment),
                FooterPost("Share", FontAwesomeIcons.share),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget FooterPost(txt, icon) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(width: 3),
          Text(
            txt,
            style: TextStyle(color: kTxtColor),
          ),
        ],
      ),
    );
  }
}
