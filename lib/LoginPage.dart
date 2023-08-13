import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xffE5B2CA),Color(0xffCD82DE)]),),
        constraints: BoxConstraints.expand(), // This expands the container
         child:Padding(

          padding:  EdgeInsets.all(20.0),
          child:
          SingleChildScrollView(
    child:
          Column(
           //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("InstaPhoto",style: TextStyle(height: 5, fontSize: 40,color: Colors.white ,fontWeight: FontWeight.bold,),),

           Padding(

             padding:  EdgeInsets.all(15.0),
              child:
              TextFormField(decoration: const InputDecoration(
             labelText: 'Name',
             border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)),),

           ),

             // The validator receives the text that the user has entered.
             validator: (value) {
               if (value == null || value.isEmpty) {
                 return 'Please enter some text';
               }
               return null;
             },),),
                      Padding(

             padding:  EdgeInsets.all(15.0),
              child:

              TextFormField(decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)),),
              ),

                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },),),
ElevatedButton(onPressed:(){}, child: Text("Sign in")),
              TextButton(onPressed: (){}, child: Text("Forgot password?")),



            ],
          ),
        ),
      ),),
    );
  }
}
