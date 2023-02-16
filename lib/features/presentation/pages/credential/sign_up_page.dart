import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/consts.dart';
import 'package:insta_clone/features/presentation/pages/credential/sign_in_page.dart';
import 'package:insta_clone/features/presentation/widgets/button_container_widget.dart';
import 'package:insta_clone/features/presentation/widgets/form_container_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(),
            ),
            Center(
              child: SvgPicture.asset(
                "assets/ic_instagram.svg",
                colorFilter:
                    const ColorFilter.mode(primaryColor, BlendMode.srcIn),
              ),
            ),
            sizeVer(15),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset("assets/profile_default.png"),
                  ),
                  Positioned(
                      right: -10,
                      bottom: -10,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_a_photo,
                          color: blueColor,
                        ),
                      ))
                ],
              ),
            ),
            sizeVer(30),
            const FormContainerWidget(
              hintText: "Username",
            ),
            sizeVer(15),
            const FormContainerWidget(
              hintText: "Email",
            ),
            sizeVer(15),
            const FormContainerWidget(
              hintText: "Password",
              isPasswordField: true,
            ),
            sizeVer(15),
            const FormContainerWidget(
              hintText: "Bio",
            ),
            sizeVer(15),
            ButtonContainerWidget(
              color: blueColor,
              text: "Sign Up",
              onTapListener: () {},
            ),
            Flexible(flex: 2, child: Container()),
            const Divider(
              color: secondaryColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: primaryColor),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                        (route) => false);
                  },
                  child: const Text(
                    "Sign In.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
