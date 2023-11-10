import 'package:flutter/material.dart';
import 'package:netflix_clone/view/home/widget/custom_icon.dart';
import 'package:netflix_clone/view/home/widget/video_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
        Text(
          'Friends',  
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        KHeight,
        Text(
          "This hit sitcom follows the merry misadvantagesof six 20-something pals as they navigate the pitfalls of work, life and love in 1990s Manhattan",
          style: TextStyle(
              color: kGreyColor, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 60,
        ),
        VideoWidget(),
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