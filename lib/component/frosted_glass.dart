import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  const FrostedGlass({super.key,
    required this.theWidth,
    required this.theHeight,
    required this.theChild
  });
 final double theWidth;
  final double theHeight;
  final Widget theChild;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          width: theWidth,
            height: theHeight,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              width: 1,
              color: Colors.white,
            )
          ),
          child: Stack(
            children: [
                     BackdropFilter(
                       filter: ImageFilter.blur(
                       sigmaX: 4.0,
                         sigmaY: 4.0,
                     ),
                     child: Container(),
                     ),
              Container(
                decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30.0),
                     border: Border.all(color: Colors.white.withOpacity(0.13),),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.25),
                    ]
                  )
                ),
              ),
              Center(
                child: theChild,
              )
            ],
          ),
        ),
      ),
    );
  }
}
