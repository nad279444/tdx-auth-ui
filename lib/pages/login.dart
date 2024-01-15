import 'package:flutter/material.dart';
import 'package:traderex_project/pages/profile.dart';
import 'package:traderex_project/pages/reset_password.dart';
import 'package:traderex_project/widgets/big_text.dart';
import 'package:traderex_project/widgets/button.dart';
import 'package:traderex_project/widgets/small_text.dart';
import 'package:traderex_project/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Image.asset('assets/logo.png', width: 150, height: 150),
              )),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: BigText(text: "  LOGIN WITH YOUR ACCOUNT "),
              )),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: SmallText(text: "Enter your Email and the Password "),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SmallText(text: "set for you by Traderex"),
              )),
          SizedBox(height: 15.0),
          SizedBox(
            height: 15.0,
          ),
          TextFieldWidget(
            textController: emailController,
            hintText: 'Email',
            icon: Icons.email,
          ),
          SizedBox(
            height: 15.0,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 10),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPasswordPage()))
                  },
                  child: Text("Forget Password",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0)),
                ),
              )),
          TextFieldWidget(
            textController: passwordController,
            hintText: 'Password',
            icon: Icons.lock,
          ),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 25.0,
          ),
          ButtonWidget(
            buttonName: "Login",
            buttonColor: Color.fromARGB(255, 5, 111, 9),
            height: 60.0,
            textSize: 20.0,
            width: 475.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profilepage()));
            },
          ),
          SizedBox(height: 25),
          RichText(
              text: TextSpan(
                  text: "Don't have an account? Sign Up",
                  // recognizer: TapGestureRecognizer()..onTap=() => Get.back()
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25.0,
                  )))
        ]),
      ),
    );
  }
}
