import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigve/core/widgets/background.dart';
import 'package:sigve/screens/home/HomeScreen.dart';
import 'package:sigve/screens/login/LoginScreen.dart';
import 'package:sigve/screens/register/RegisterController.dart';

class RegisterScreen extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA),
                        fontSize: 36),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "CNI"),
                    onChanged: (value) {
                      controller.cni.value = int.parse(value);
                      print(value);
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.date_naissance.value = value;
                      print(value);
                    },
                    decoration: InputDecoration(labelText: "Date Naissance"),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.lieu_naissance.value = value;
                      print(value);
                    },
                    decoration: InputDecoration(labelText: "Lieu Naissance"),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.lieu_residence.value = value;
                      print(value);
                    },
                    decoration: InputDecoration(labelText: "Lieu Residence"),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.profession.value = value;
                      print(value);
                    },
                    decoration: InputDecoration(labelText: "Profession"),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      controller.photo.value = value;
                      print(value);
                    },
                    decoration: InputDecoration(labelText: "Photo"),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.email.value = value;
                      print(value);
                    },
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.password.value = value;
                      print(value);
                    },
                    decoration: InputDecoration(labelText: "Password"),
                    obscureText: true,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.fingerprint.value = value;
                      print(value);
                    },
                    decoration: InputDecoration(labelText: "Fingerprint"),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.onRegistrieUser();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 136, 34),
                            Color.fromARGB(255, 255, 177, 41)
                          ],
                        ),
                      ),
                      child: Text(
                        "SIGN UP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()))
                    },
                    child: Text(
                      "Already Have an Account? Sign in",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2661FA)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
