import 'package:flutter/material.dart';
import 'package:insta_clone/consts.dart';

class UploadPostPage extends StatelessWidget {
  const UploadPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(.3),
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.upload,
              color: primaryColor,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
