import 'package:flutter/material.dart';
import 'package:login_ui/component/frosted_glass.dart';

import 'component/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/image3.jpg"),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: OutlinedButton(
               onPressed: (){},
                 style: ButtonStyle(
                   side: MaterialStateProperty.all(
                     const BorderSide(
                         color: Colors.purple
                     ),
                   ),
                    ),
               child: const Text(
                 "Sign Up",
                 style: TextStyle(
                   color: Colors.purpleAccent,
                   fontSize: 15,
                 ),
               )
           ),
         ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
             alignment: Alignment.center,
             child: FrostedGlass(
                theHeight: 480.0,
                theWidth: 450.0,
                theChild: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(left: 340, bottom: 20,),
                      decoration:  BoxDecoration(
                    color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(onPressed: (){},
                          icon: const Icon(Icons.close,
                            color: Colors.white,
                          ),
                      ),
                    ),
                    Text(
                      "Log In,",
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                   const SizedBox(height: 10,),
                    Text(
                      "Welcome Back! Log in to Continue",
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20,),
                  const Padding(
                     padding:  EdgeInsets.all(8.0),
                     child:  TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          hintText: "Email@gmail.com",
                          filled: true,
                          hintStyle: TextStyle(
                            fontSize: 20,
                              color: Colors.grey
                          ),
                        ),
                       style: TextStyle(
                         fontSize: 15,
                         color: Colors.white,
                       ),
                      ),
                   ),
                    const SizedBox(height: 10,),
                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child:  TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          hintText: "Password",
                          filled: true,
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.grey
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                   const Button(),
                  ],
                ),
              ),
           ),
        ),
        ],
      ),
    );
  }
}
