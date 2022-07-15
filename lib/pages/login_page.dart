import 'package:flutter/material.dart';
import 'package:fluttter_demo/utils/routes.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

//  underscore before name denotes private variable
class _LoginPageState extends State<LoginPage> {
  String name  = "";
  bool changeButton = false;

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
            Text("Welcome $name",
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
                    ),
                  onChanged: (value){
                  // check if the value has any alphanumeric characters
                      if(value.contains(RegExp(r'[a-zA-Z0-9]'))){
                        name = value;
                      }
                      if(value.isEmpty){
                        name = "";
                      }
                      setState(() {});
                  },)
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
                InkWell(
                  onTap: () async{
                    setState((){
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                    duration: Duration(seconds: 1),
                    child: changeButton? Icon(Icons.done,color: Colors.white,): Text("Login",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                    ),
                  ),
                )
                // ElevatedButton(
                //   child: Text("Login"),
                //   style : TextButton.styleFrom(minimumSize: Size(150,40)),
                //   onPressed: (){
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //
                //   },
                // )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
