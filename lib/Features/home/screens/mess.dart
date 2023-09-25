import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fz_hassan/Features/auth/widget/custom_textfield.dart';
import 'package:fz_hassan/init/appbar.dart';
import 'package:fz_hassan/init/constants.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  int ite = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: SizedBox(
          height: 40,
          child: Center(
            child: CustomTextBox(
              hint: "Search messages",
            ),
          ),
        ),
        leading: FaIcon(
          Icons.arrow_back_ios,
          color: kBgColor,
        ),
        actions: [
          FaIcon(
            Icons.more_horiz_outlined,
            color: kBgColor,
          ),
          SizedBox(width: 5),
          FaIcon(
            Icons.add_box_outlined,
            color: kBgColor,
          ),
          SizedBox(width: 5),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 15.0,
            ),

            // BTN TOP
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => setState(() {
                      ite = 1;
                    }),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: ite == 1 ? kPrimaryColor : kBgColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: kPrimaryColor),
                      ),
                      child: Center(
                        child: Text(
                          "Personail",
                          style: TextStyle(
                              color: ite == 1 ? kBgColor : kPrimaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: InkWell(
                    onTap: () => setState(() {
                      ite = 2;
                    }),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: ite == 2 ? kPrimaryColor : kBgColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: kPrimaryColor),
                      ),
                      child: Center(
                        child: Text(
                          "Group 3",
                          style: TextStyle(
                              color: ite == 2 ? kBgColor : kPrimaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: InkWell(
                    onTap: () => setState(() {
                      ite = 3;
                    }),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: ite == 3 ? kPrimaryColor : kBgColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: kPrimaryColor),
                      ),
                      child: Center(
                        child: Text(
                          "Request 23",
                          style: TextStyle(
                              color: ite == 3 ? kBgColor : kPrimaryColor),
                        ),
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

            // List

            const SizedBox(height: 10.0),
            Expanded(
              child: Container(
                // height: 300,
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Container(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset("assets/avatars/avatar_2.jpg",
                              width: 44, height: 44),
                        ),
                        title: Text("items[index]"),
                        subtitle: Text(
                            'Subtitle dsd dsds ddd sdwwq  fdasfdw q edasd ASSD  DJKWENFIO NSANDIUF SNJIF MS'),
                        trailing: Text("Jun 16"),
                        //  },
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(
              height: 60.0,
            ),
          ],
        ),
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
                const Text(
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
                        const Text(
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
                          style: const TextStyle(
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
            style: const TextStyle(color: kTxtColor),
          ),
        ],
      ),
    );
  }
}
