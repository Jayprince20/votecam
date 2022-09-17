// ignore_for_file: dead_code, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigve/screens/homedetails/HomeDetailsCtrl.dart';

class HomeDetails extends GetWidget<HomeDetailsController> {
  HomeDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Container(
          color: Color.fromARGB(255, 44, 73, 99),
        ),
        Image.asset(
          "assets/images/main.png",
          fit: BoxFit.fill,
        ),
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 6.0,
            sigmaY: 6.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 44, 73, 99).withOpacity(0.9),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Profile Details"),
            centerTitle: false,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
          drawer: Drawer(
            child: Container(),
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: _height / 12,
                ),
                CircleAvatar(
                  radius: _width < _height ? _width / 4 : _height / 4,
                  backgroundImage: AssetImage("assets/images/main.png"),
                ),
                SizedBox(
                  height: _height / 25.0,
                ),
                Text(
                  'Paul Biya',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _width / 15,
                      color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _height / 30, left: _width / 8, right: _width / 8),
                  child: Text(
                    'Snowboarder, Superhero and writer.\nSometime I work at google as Executive Chairman ',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: _width / 25,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(
                  height: _height / 30,
                  color: Colors.white,
                ),
                Row(
                  children: <Widget>[
                    rowCell("CPDM", 'Political Party'),
                    rowCell("1", 'Votes'),
                    rowCell("275", 'FOLLOWING'),
                  ],
                ),
                Divider(height: _height / 30, color: Colors.white),
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 100),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.signInWithBiometrics();
                      // Get.dialog(
                      //   Dialog(
                      //     insetPadding: EdgeInsets.only(
                      //         left: 40, right: 40, top: 140, bottom: 250),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(15.0),
                      //     ),
                      //     elevation: 20,
                      //     child: Center(
                      //       child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           Text(
                      //             "Sorry, you voted already!!!",
                      //           ),
                      //           SizedBox(
                      //             height: 20,
                      //           ),
                      //           Icon(
                      //             Icons.fingerprint,
                      //             size: 130,
                      //             color: Colors.red,
                      //           ),
                      //           SizedBox(
                      //             height: 20,
                      //           ),
                      //           // Text(
                      //           //   "Touch Again the FingerPrint Sensor",
                      //           //   style: TextStyle(
                      //           //     color: Colors.red,
                      //           //   ),
                      //           // ),
                      //           Padding(
                      //             padding: const EdgeInsets.all(30.0),
                      //             child: Row(
                      //               mainAxisAlignment: MainAxisAlignment.end,
                      //               children: [
                      //                 ElevatedButton(
                      //                   style: ElevatedButton.styleFrom(
                      //                     backgroundColor: Colors.red,
                      //                   ),
                      //                   onPressed: () {},
                      //                   child: Text("Cancel"),
                      //                 ),
                      //               ],
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                    ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.fingerprint),
                          SizedBox(
                            height: _width / 10,
                          ),
                          Text("VOTE")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget rowCell(String count, String type) => Expanded(
        child: Column(
          children: <Widget>[
            Text(
              '$count',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              type,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            )
          ],
        ),
      );
}
