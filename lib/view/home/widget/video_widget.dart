import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

import '../../../core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 210,
          width: double.infinity,
          child: Image.network(
           kEveryoneWatchingImage ,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 300,
          top: 160,
          right: 10,
          bottom: 0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.volume_off,
              size: 25,
              color: baseColor,
            ),
          ),
        ),
      ],
    );
  }
}