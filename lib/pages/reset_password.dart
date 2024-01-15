import 'package:flutter/material.dart';
import 'package:traderex_project/widgets/big_text.dart';
import 'package:traderex_project/widgets/button.dart';
import 'package:traderex_project/widgets/textfield.dart';

class ResetPasswordPage extends StatelessWidget {
  ResetPasswordPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BigText(text: 'Reset Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
                radius: 75,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.green, size: 150.0)),
            const SizedBox(height: 20.0),
            const Center(
                child: Text(
                    "Send your Email and we will send you a reset Password",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green))),
            SizedBox(height: 20.0),
            TextFieldWidget(
                textController: emailController,
                hintText: "Email",
                icon: Icons.email),
            SizedBox(height: 30.0),
            ButtonWidget(
                buttonName: "Reset Password",
                buttonColor: Color.fromARGB(255, 3, 21, 3),
                height: 60,
                textSize: 20,
                width: 475,
                onPressed: () => {})
          ],
        ),
      ),
    );
  }
}
