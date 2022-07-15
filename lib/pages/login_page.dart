import 'package:flutter/material.dart';
import 'package:fluttter_demo/utils/routes.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
                fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration:InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Name",
                    ))
                    ,
                    TextField(
                  decoration:InputDecoration(
                  hintText: "Enter your password",
                    labelText: "Password",
                  ),
                  obscureText: true,
                  ),

                SizedBox(
                height: 20.0,
              ),
                ElevatedButton(
                  child: Text("Login"),
                  style : TextButton.styleFrom(minimumSize: Size(150,40)),
                  onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.homeRoute);

                  },
                )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
