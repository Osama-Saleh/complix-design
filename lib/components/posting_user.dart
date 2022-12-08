// ignore_for_file: prefer_const_constructors

import 'package:design/data/data.dart';

import 'package:flutter/material.dart';

class PostingUser extends StatelessWidget {
  PageController? pCon;
  PostingUser({this.pCon, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: const Text(
            'Posts:',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),
          ),
        ),
        Container(
            height: 400,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: pCon,
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  // Post post = posts[index];
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(2, 2),
                                blurRadius: 5,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all()),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage("${posts[index].imageUrl}"),
                            fit: BoxFit.cover,
                            height: 400,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Container(
                          height: 110,
                          // width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${posts[index].title}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${posts[index].location}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "${posts[index].likes}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.comment,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "${posts[index].comments}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                })
            //useing above code or down code only on
            // ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: posts.length,
            //     itemBuilder: (context, index) {
            //       // Post post = posts[index];
            //       return Stack(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10),
            //             child: Container(
            //               decoration: BoxDecoration(
            //                   // ignore: prefer_const_literals_to_create_immutables
            //                   boxShadow: [
            //                     BoxShadow(
            //                       offset: Offset(2, 2),
            //                       blurRadius: 5,
            //                     ),
            //                   ],
            //                   borderRadius: BorderRadius.circular(10),
            //                   border: Border.all()),
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(10),
            //                 child: Image(
            //                   image: AssetImage("${posts[index].imageUrl}"),
            //                   fit: BoxFit.cover,
            //                   height: 350,
            //                   width: 250,
            //                 ),
            //               ),
            //             ),
            //           ),
            //           Positioned(
            //             bottom: 10,
            //             left: 10,
            //             right: 10,
            //             child: Container(
            //               height: 110,
            //               decoration: BoxDecoration(
            //                 color: Colors.white.withOpacity(.6),
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Text(
            //                       "${posts[index].title}",
            //                       style: TextStyle(
            //                           fontSize: 20, fontWeight: FontWeight.w600),
            //                     ),
            //                     SizedBox(
            //                       height: 5,
            //                     ),
            //                     Text(
            //                       "${posts[index].location}",
            //                       style: TextStyle(
            //                           fontSize: 15, fontWeight: FontWeight.bold),
            //                     ),
            //                     Spacer(),
            //                     Row(
            //                       children: [
            //                         Icon(
            //                           Icons.favorite,
            //                           color: Colors.red,
            //                         ),
            //                         Text(
            //                           "${posts[index].likes}",
            //                           style: TextStyle(
            //                               fontSize: 20, fontWeight: FontWeight.w600),
            //                         ),
            //                         Spacer(),
            //                         Icon(
            //                           Icons.comment,
            //                           color: Colors.blue,
            //                         ),
            //                         Text(
            //                           "${posts[index].comments}",
            //                           style: TextStyle(
            //                               fontSize: 20, fontWeight: FontWeight.w600),
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           )
            //         ],
            //       );
            //     }),
            ),
      ],
    );
  }
}
