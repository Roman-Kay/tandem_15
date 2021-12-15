import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tandem/core/navigation/slide_right_route.dart';
import 'package:tandem/core/presentation/widgets/avatar_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'chat_screen.dart';

class Avatar {
  final int id;

  final String avatar;

  Avatar({
    required this.id,
    required this.avatar,
  });
}

class PeopleScreen extends StatelessWidget {
  final _avatar = [
    Avatar(
      id: 1,
      avatar: 'assets/images/user_1.png',
    ),
    Avatar(
      id: 2,
      avatar: 'assets/images/user_2.png',
    ),
    Avatar(
      id: 3,
      avatar: 'assets/images/user_3.png',
    ),
    Avatar(
      id: 4,
      avatar: 'assets/images/user_4.png',
    ),
    Avatar(
      id: 5,
      avatar: 'assets/images/user_5.png',
    ),
    Avatar(
      id: 6,
      avatar: 'assets/images/user_6.png',
    ),
    Avatar(
      id: 7,
      avatar: 'assets/images/user_7.png',
    ),
    Avatar(
      id: 1,
      avatar: 'assets/images/user_1.png',
    ),
    Avatar(
      id: 2,
      avatar: 'assets/images/user_2.png',
    ),
    Avatar(
      id: 3,
      avatar: 'assets/images/user_3.png',
    ),
    Avatar(
      id: 4,
      avatar: 'assets/images/user_4.png',
    ),
    Avatar(
      id: 5,
      avatar: 'assets/images/user_5.png',
    ),
    Avatar(
      id: 6,
      avatar: 'assets/images/user_6.png',
    ),
    Avatar(
      id: 7,
      avatar: 'assets/images/user_7.png',
    ),
    Avatar(
      id: 1,
      avatar: 'assets/images/user_1.png',
    ),
    Avatar(
      id: 2,
      avatar: 'assets/images/user_2.png',
    ),
    Avatar(
      id: 3,
      avatar: 'assets/images/user_3.png',
    ),
    Avatar(
      id: 4,
      avatar: 'assets/images/user_4.png',
    ),
    Avatar(
      id: 5,
      avatar: 'assets/images/user_5.png',
    ),
    Avatar(
      id: 6,
      avatar: 'assets/images/user_6.png',
    ),
    Avatar(
      id: 7,
      avatar: 'assets/images/user_7.png',
    ),
    Avatar(
      id: 1,
      avatar: 'assets/images/user_1.png',
    ),
    Avatar(
      id: 2,
      avatar: 'assets/images/user_2.png',
    ),
    Avatar(
      id: 3,
      avatar: 'assets/images/user_3.png',
    ),
    Avatar(
      id: 4,
      avatar: 'assets/images/user_4.png',
    ),
    Avatar(
      id: 5,
      avatar: 'assets/images/user_5.png',
    ),
    Avatar(
      id: 6,
      avatar: 'assets/images/user_6.png',
    ),
    Avatar(
      id: 7,
      avatar: 'assets/images/user_7.png',
    ),
  ];

  // const PeopleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                    child: SizedBox(
                  height: height,
                  child: Row(
                    children: List.generate(
                      4,
                      (index) => SizedBox(
                        width: width,
                        child: StaggeredGridView.countBuilder(
                          crossAxisCount: 3,
                          // itemCount: imageList2.length,
                          physics: const ScrollPhysics(),
                          itemCount: _avatar.length,
                          itemBuilder: (BuildContext context, int index) {
                            final people = _avatar[index];

                            return
                                // Transform.translate(
                                //   offset: Offset(0, index % 2 == 1 ? 70 : 30),
                                //   child:
                                Container(
                              alignment: Alignment.bottomCenter,
                              // padding: EdgeInsets.only(
                              //   top: index == 0 || index == 2 ? 70 : 30,
                              // ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      SlideRightRoute(
                                          page: ChatScreen(tag: index)));
                                },
                                child: AvatarWidget(
                                  number: index == 0 || index == 1 || index == 2
                                      ? '${index + 1}'
                                      : null,
                                  online: index == 0 ||
                                          index == 6 ||
                                          index == 8 ||
                                          index == 9
                                      ? true
                                      : false,
                                  border: index == 0 || index == 1 || index == 2
                                      ? true
                                      : false,
                                  size: 110,
                                  avatar: people.avatar,
                                ),
                              ),
                              // ),
                            );
                          },
                          staggeredTileBuilder: (index) {
                            return StaggeredTile.count(1, index.isEven ? 1 : 1);
                          },
                          // staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                          mainAxisSpacing: 26.0,
                          crossAxisSpacing: 8.0,
                        ),
                      ),
                    ),
                  ),
                )))));
  }
}

//  Container(
//   alignment: Alignment.bottomCenter,
//   // padding: EdgeInsets.only(
//   //   top: index == 0 || index == 2 ? 70 : 30,
//   // ),

//   child: GestureDetector(
//     onTap: () {
//       Navigator.push(
//           context,
//           SlideRightRoute(
//               page: ChatScreen(tag: index)));
//     },
//     child: AvatarWidget(
//       number: index == 0 || index == 1 || index == 2
//           ? '${index + 1}'
//           : null,
//       online: index == 0 ||
//               index == 6 ||
//               index == 8 ||
//               index == 9
//           ? true
//           : false,
//       border: index == 0 || index == 1 || index == 2
//           ? true
//           : false,
//       size: 110,
//       avatar: 'assets/images/user_1.png',
//     ),
//   ),
// ),
//         )),
//       ),
//     ),
//   ),
// ))));

//     child: StaggeredGridView.countBuilder(
//       crossAxisCount: 3,
//       // itemCount: imageList2.length,
//       physics: const ScrollPhysics(),
//       itemCount: _avatar.length,
//       itemBuilder: (BuildContext context, int index) {
//         final people = _avatar[index];

//         return Transform.translate(
//           offset: Offset(0, index % 2 == 1 ? 70 : 30),
//     child: Container(
//       alignment: Alignment.bottomCenter,
//       // padding: EdgeInsets.only(
//       //   top: index == 0 || index == 2 ? 70 : 30,
//       // ),
//       child: GestureDetector(
//         onTap: () {
//           Navigator.push(
//               context, SlideRightRoute(page: ChatScreen(tag: index)));
//         },
//         child: AvatarWidget(
//           number: index == 0 || index == 1 || index == 2
//               ? '${index + 1}'
//               : null,
//           online: index == 0 || index == 6 || index == 8 || index == 9
//               ? true
//               : false,
//           border:
//               index == 0 || index == 1 || index == 2 ? true : false,
//           size: 110,
//           avatar: people.avatar,
//         ),
//       ),
//     ),
//               );
//             },
//             staggeredTileBuilder: (index) {
//               return StaggeredTile.count(1, index.isEven ? 1 : 1);
//             },
//             // staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
//             mainAxisSpacing: 26.0,
//             crossAxisSpacing: 18.0,
//           ),
//           ),
//     ));
//   }
// }

// class PinterestGrid extends StatelessWidget {
//   const PinterestGrid({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
//   return StaggeredGridView.countBuilder(
//     crossAxisCount: 3,
//     itemCount: 150,
//     itemBuilder: (context, index) {
//       double h = index % 3 == 0 ? 100 : 40;

//       return Container(
//         margin: EdgeInsets.only(top: index == 0 || index == 2 ? 40 : 0),
//         width: 100,
//         height: 100,
//         child: AvatarWidget(size: 40, avatar: 'assets/images/user_1.png'),
//         // color: Colors.green, child: Text('$index')
//       );
//       //
//       // imageList2[index];
//     },
//     staggeredTileBuilder: (index) => StaggeredTile.fit(1),
//     mainAxisSpacing: 20.0,
//     crossAxisSpacing: 8.0,
//   );
// }
// }
//   }
// }
