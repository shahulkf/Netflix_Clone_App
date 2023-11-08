import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KWidth,
         Text(title,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),

        const Spacer(),

        const Icon(Icons.cast,
         color: Colors.white,
         size: 30,
         ),
         
         KWidth,

        Container(
          color: Color.fromARGB(255, 4, 96, 87),
          width: 30,
          height: 30,
        ),
         KWidth,
      ],
    );
  }
}
