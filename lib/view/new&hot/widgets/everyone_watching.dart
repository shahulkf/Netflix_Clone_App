// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/model/movie.dart';
import 'package:netflix_clone/view/home/screen_home.dart';
import 'package:netflix_clone/view/home/widget/custom_icon.dart';
import 'package:netflix_clone/view/home/widget/video_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  final Movie movie;
  const EveryoneWatchingWidget({
    required this.movie,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
        Text(
          movie.title,  
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        KHeight,
        Text(
          movie.overview,
          style: TextStyle(
              color: kGreyColor, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 60,
        ),
        VideoWidget(image:movie.backdropPath),
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomIconWidget(
              icon: Icons.share,
              label: 'Share',
              textsize: 14,
            ),
            KWidth,
            CustomIconWidget(
              icon: Icons.add,
              label: 'Add',
              textsize: 14,
            ),
            KWidth,
            CustomIconWidget(
              icon: Icons.play_arrow,
              label: 'Play',
              textsize: 14,
            ),
          ],
        )
      ],
    );
  }
}