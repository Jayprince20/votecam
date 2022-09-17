// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigve/core/widgets/ListTile.dart';
import 'package:sigve/route/PageRoute.dart';
import 'package:sigve/screens/home/HomeController.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(228, 22, 88, 211),
        actions: [
          IconButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationVersion: '^1.0.0',
                applicationIcon: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/main.png'),
                ),
                applicationName: 'VoteCam',
                applicationLegalese: 'WinMoney',
              );
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          ListStile(
            name: "Paul Biya",
            party: "CPDM",
            votes: "89 Votes",
          ),
          ListStile(
            name: "Cabral Libi",
            party: "PCRN",
            votes: "63 Votes",
          ),
          ListStile(
            name: "Maurice Kamto",
            party: "MRC",
            votes: "86 Votes",
          ),
          ListStile(
            name: "John Fru Ndi",
            party: "SDF",
            votes: "45 Votes",
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
          onTap: () {
            Get.toNamed(AppRoutes.ProfileDetails);
          },
          child: ListStile());
    },
  ),
);
