import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sigve/route/PageRoute.dart';

class ListStile extends StatelessWidget {
  const ListStile({this.name, this.party, this.votes});
  final String? name;
  final String? party;
  final String? votes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.ProfileDetails);
      },
      child: Card(
        elevation: 8.0,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(228, 22, 88, 211),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Image(
                image: AssetImage("assets/images/main.png"),
              ),
            ),
            title: Text(
              name!,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.linear_scale, color: Colors.yellowAccent),
                Text(
                  party!,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            trailing: Text(
              votes!,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
