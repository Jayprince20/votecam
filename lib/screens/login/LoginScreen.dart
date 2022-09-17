import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigve/core/widgets/background.dart';
import 'package:sigve/route/PageRoute.dart';
import 'package:sigve/screens/home/HomeScreen.dart';
import 'package:sigve/screens/login/LoginController.dart';
import 'package:sigve/screens/register/RegisterScreen.dart';

class LoginScreen extends GetView<LoginControllers> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final controller = Get.put(LoginControllers());

    return Scaffold(
      body: Background(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "LOGIN",
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
                  keyboardType: TextInputType.emailAddress,
                  // controller: controller.emailController,
                  onChanged: (value) {
                    controller.email.value = value;
                    print(value);
                  },
                  validator: (email) {
                    if (!email!.contains("@")) {
                      return "enter a valide email";
                    }
                  },
                  decoration: InputDecoration(labelText: "Username"),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  // controller: controller.passwordController,
                  onChanged: (value) {
                    controller.password.value = value;
                    print(value);
                  },
                  validator: (password) {
                    if (password!.length < 5) {
                      return "please! enter a valid password. password must be greater than 5 characters";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen(),
                      ),
                    );
                  },
                  child: ElevatedButton(
                    onPressed: () {
                      // Get.toNamed(AppRoutes.HOME);
                      controller.onLogin();
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
                          // ignore: prefer_const_literals_to_create_immutables
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 255, 136, 34),
                            Color.fromARGB(255, 255, 177, 41),
                          ])),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
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
                            builder: (BuildContext context) =>
                                RegisterScreen()))
                  },
                  child: Text(
                    "Don't Have an Account? Sign up",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
