import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pigeon1/widget/devices/tv/search.dart';
import 'package:pigeon1/widget/shadow.dart';

Widget remoteTv({
  required double width,
  required BuildContext context,
}) {
  Widget butt({required Widget widget}) {
    return Container(
        width: width / 8,
        height: width / 8,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            boxShadow,
          ],
        ),
        child: widget);
  }

  // openkey() {
  //   FocusScope.of(context).requestFocus(FocusNode());
  // }

  return Container(
    width: width,
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        boxShadow,
      ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            butt(
              widget: Icon(
                Icons.mic_rounded,
              ),
            ),
            butt(
              widget: Icon(Icons.volume_off_rounded),
            ),
            GestureDetector(
              onTap: () {
                Get.bottomSheet(Search());
              },
              child: butt(
                widget: Icon(
                  Icons.search_rounded,
                ),
              ),
            ),
            // Wrap(
            //   children: [
            //     // InkWell(
            //     //   onTap: openkey,
            //     //   child: butt(
            //     //     widget: Padding(
            //     //       padding: const EdgeInsets.all(10),
            //     //       child: Row(
            //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     //         children: [
            //     //           for (var i = 1; i < 4; i++)
            //     //             Text(
            //     //               i.toString(),
            //     //               style: TextStyle(
            //     //                 fontWeight: FontWeight.bold,
            //     //               ),
            //     //             )
            //     //         ],
            //     //       ),
            //     //     ),
            //     //   ),
            //     // ),
            //     SizedBox(
            //       width: 15,
            //     ),
            //     InkWell(
            //       onTap: openkey,
            //       child: butt(
            //         widget: Padding(
            //           padding: const EdgeInsets.all(10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               for (var i = 'A'.codeUnitAt(0);
            //                   i < 'D'.codeUnitAt(0);
            //                   i++)
            //                 Text(
            //                   String.fromCharCode(i),
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 12,
            //                   ),
            //                 )
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: width / 2.3,
          height: width / 2.3,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                // boxShadow,
              ]),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: null,
                child: butt(
                  widget: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: null,
                right: 0,
                bottom: 0,
                child: butt(
                  widget: RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: null,
                left: 0,
                right: 0,
                bottom: 0,
                child: butt(
                  widget: RotatedBox(
                    quarterTurns: 3,
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: null,
                bottom: 0,
                child: butt(
                  widget: RotatedBox(
                    quarterTurns: 4,
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
              ),
              Center(
                child: butt(
                    widget: Center(
                  child: Text(
                    "OKE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
              )
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            butt(
              widget: Icon(
                Icons.arrow_back_rounded,
              ),
            ),
            butt(
              widget: Icon(
                Icons.home_filled,
              ),
            ),
            butt(
              widget: Icon(Icons.settings),
            )
          ],
        ),
      ],
    ),
  );
}
