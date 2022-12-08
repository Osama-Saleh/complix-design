// ignore_for_file: prefer_const_constructors

import 'package:design/data/data.dart';
import 'package:design/models/user_model.dart';
import 'package:flutter/material.dart';

class FollowingUser extends StatelessWidget {
  const FollowingUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Following:",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 80,
          child: ListView.builder(
            itemCount: users.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // User user = users[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                    ),
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("${users[index].profileImageUrl}"),
                    )
                    // ClipOval(
                    //   child: Image(
                    //     image: AssetImage("${users[index].profileImageUrl}"),
                    //     fit: BoxFit.cover,
                    //     width: 60,
                    //     height: 60,
                    //   ),
                    // ),
                    ),
              );
            },
          ),
        ),
      ],
    );
  }
}
