import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/api/api_constants.dart';

import '../../../core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  final String image;
  const VideoWidget({
    required this.image,
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
           ApiConstants.imageBaseUrl + image,
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