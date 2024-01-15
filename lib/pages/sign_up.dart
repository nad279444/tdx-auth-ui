import 'package:flutter/material.dart';
import 'package:traderex_project/pages/login.dart';
import 'package:traderex_project/widgets/big_text.dart';
import 'package:traderex_project/widgets/button.dart';
import 'package:traderex_project/widgets/small_text.dart';
import 'package:traderex_project/widgets/textfield.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController aggregatorNameController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  SignUpPage({super.key});

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
                padding: const EdgeInsets.only(left: 15.0),
                child: BigText(text: " SIGN UP WITH YOUR DETAILS "),
              )),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: SmallText(text: "All fields are needed to sign up"),
              )),
          SizedBox(height: 15.0),
          TextFieldWidget(
            textController: aggregatorNameController,
            hintText: 'Name',
            icon: Icons.person,
          ),
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
          TextFieldWidget(
            textController: passwordController,
            hintText: 'Password',
            icon: Icons.lock,
          ),
          SizedBox(
            height: 15.0,
          ),
          TextFieldWidget(
            textController: emailController,
            hintText: 'Phone',
            icon: Icons.phone,
          ),
          SizedBox(
            height: 25.0,
          ),
          ButtonWidget(
            buttonName: "Sign Up",
            buttonColor: Color.fromARGB(255, 5, 111, 9),
            height: 60.0,
            textSize: 20.0,
            width: 475.0,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          SizedBox(height: 25),
          RichText(
              text: TextSpan(
                  text: "Have an account already?",
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
