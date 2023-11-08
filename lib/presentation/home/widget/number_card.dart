import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/core/colors/colors.dart';
import 'package:netflix_clone/domain/core/constants.dart';
import 'package:stroke_text/stroke_text.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              // color: Colors.amber,
              decoration: BoxDecoration(
                borderRadius: kRadius20,
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://www.themoviedb.org/t/p/w440_and_h660_face/ruW3malZtlg66ODfg614dFbXO68.jpg')),
              ),
            ),
          ],
        ),
        Positioned(
          left: 20,
          bottom: -10,
          child: StrokeText(
           
            strokeWidth: 10.0,
            strokeColor: baseColor,
            text: '${index + 1}',
            textStyle: const TextStyle(
              color: baseColor,
                fontSize: 140,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }
}
