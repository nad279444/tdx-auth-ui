import 'package:flutter/material.dart';
import 'package:traderex_project/widgets/profile_field.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("Profile",
                style: TextStyle(fontSize: 24, color: Colors.white))),
        body: Container(
          margin: EdgeInsets.only(top: 10.0),
          width: double.maxFinite,
          child: const Column(
            children: [
              CircleAvatar(
                radius: 75.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.green,
                  size: 150.0,
                ),
              ),
              SizedBox(height: 16.0),
              ProfileField(
                  appIcon: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  text: Text("John")),
              SizedBox(
                height: 35.0,
              ),
              ProfileField(
                  appIcon: Icon(
                    Icons.location_city,
                    color: Colors.green,
                  ),
                  text: Text("Juaso")),
              SizedBox(
                height: 35.0,
              ),
              ProfileField(
                  appIcon: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  text: Text("0245666777")),
              SizedBox(
                height: 35.0,
              ),
              ProfileField(
                  appIcon: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  text: Text("John@gmail.com")),
              SizedBox(
                height: 35.0,
              ),
              ProfileField(
                  appIcon: Icon(
                    Icons.map_rounded,
                    color: Colors.green,
                  ),
                  text: Text("Ghana")),
              SizedBox(
                height: 35.0,
              )
            ],
          ),
        ));
  }
}
