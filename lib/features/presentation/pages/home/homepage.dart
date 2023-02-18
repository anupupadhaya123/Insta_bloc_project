import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/consts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backGroundColor,
        title: SvgPicture.asset(
          "assets/ic_instagram.svg",
          colorFilter: const ColorFilter.mode(primaryColor, BlendMode.srcIn),
          height: 32,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.facebook_rounded,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    sizeHor(10),
                    const Text(
                      "Username",
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Icon(
                  Icons.more_vert_rounded,
                  color: primaryColor,
                )
              ],
            ),
            sizeVer(10),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              color: secondaryColor,
            ),
            sizeVer(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: primaryColor,
                    ),
                    sizeHor(10),
                    const Icon(
                      Icons.comment_rounded,
                      color: primaryColor,
                    ),
                    sizeHor(10),
                    const Icon(
                      Icons.share_sharp,
                      color: primaryColor,
                    ),
                  ],
                ),
                const Icon(
                  Icons.bookmark_add,
                  color: primaryColor,
                )
              ],
            ),
            sizeVer(10),
            Row(
              children: [
                const Text(
                  "Username",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.bold),
                ),
                sizeHor(10),
                const Text(
                  "some description",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            sizeVer(5),
            const Text(
              "View all 10 comments",
              style: TextStyle(color: darkGreyColor),
            ),
            sizeVer(5),
            const Text(
              "08/22/2022",
              style: TextStyle(color: darkGreyColor),
            )
          ],
        ),
      ),
    );
  }
}
