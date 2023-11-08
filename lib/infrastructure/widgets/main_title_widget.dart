import 'package:flutter/material.dart';

class MainTitleWidget extends StatelessWidget {
  final String title;
  const MainTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text( 
        title,
        style:const  TextStyle(
          fontSize: 23,
        fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}