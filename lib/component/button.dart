import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: ElevatedButton(
            onPressed: (){},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(40, 60),),
              backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
