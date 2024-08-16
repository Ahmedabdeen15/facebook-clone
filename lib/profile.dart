import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _activeTextColor = Colors.blue;
  final _standardTextColor = Colors.black;
  final _activeButtonColor = const Color.fromARGB(75, 207, 222, 235);
  Color? _postButtonColor = const Color.fromARGB(75, 207, 222, 235);
  Color _postTextColor = Colors.blue;
  Color? _photoButtonColor;
  Color _photoTextColor = Colors.black;
  Color? _videoButtonColor;
  Color _videoTextColor = Colors.black;
  void _changeContent(String screen) {
    setState(() {
      switch (screen) {
        case "Posts":
          _postButtonColor = _activeButtonColor;
          _postTextColor = _activeTextColor;
          _photoButtonColor = null;
          _photoTextColor = _standardTextColor;
          _videoButtonColor = null;
          _videoTextColor = _standardTextColor;
          break;
        case "Photos":
          _postButtonColor = null;
          _postTextColor = _standardTextColor;
          _photoButtonColor = _activeButtonColor;
          _photoTextColor = _activeTextColor;
          _videoButtonColor = null;
          _videoTextColor = _standardTextColor;
          break;
        case "Videos":
          _postButtonColor = null;
          _postTextColor = _standardTextColor;
          _photoButtonColor = null;
          _photoTextColor = _standardTextColor;
          _videoButtonColor = _activeButtonColor;
          _videoTextColor = _activeTextColor;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset("assets/cover.jpg"),
              Positioned(
                top: 150,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(8), // Border width
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(75), // Image radius
                      child: Image.asset('assets/profile-pic.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 275,
                left: 135,
                child: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(3), // Border width
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    constraints: const BoxConstraints.expand(),
                    iconSize: 15,
                    icon: const Icon(Icons.camera_alt),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 206, 203, 203),
                      fixedSize: const Size(27, 27),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(30)), // Square corners
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 210,
                left: 350,
                child: Container(
                  width: 40,
                  height: 40,
                  padding: const EdgeInsets.all(3), // Border width
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    constraints: const BoxConstraints.expand(),
                    iconSize: 15,
                    icon: const Icon(Icons.camera_alt),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 206, 203, 203),
                      fixedSize: const Size(27, 27),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(30)), // Square corners
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "BaD DeV GooD DeV",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        "150",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "friends",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "lives in",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Alexandria, Egypt",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "From",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Alexandria, Egypt",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.more_horiz,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "See more About info",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: const Text(
                          "Add to story",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                              255, 48, 124, 255), // Background color

                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)), // Square corners
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: const Text(
                          "Edit profile",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 243, 240, 240),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)), // Square corners
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 243, 240, 240),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)), // Square corners
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          _changeContent("Posts");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _postButtonColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(20)), // Square corners
                          ),
                        ),
                        child: Text(
                          "Posts",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: _postTextColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          _changeContent("Photos");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _photoButtonColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(20)), // Square corners
                          ),
                        ),
                        child: Text(
                          "Photos",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: _photoTextColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          _changeContent("Videos");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _videoButtonColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(20)), // Square corners
                          ),
                        ),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: _videoTextColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
