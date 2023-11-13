import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/api/api_constants.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/model/movie.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  final String image;
  const VideoListItem({super.key, required this.index, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      ApiConstants.imageBaseUrl + image,
                    ),
                    fit: BoxFit.cover))),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.grey[700],
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      size: 30,
                      color: baseColor,
                    ),
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.themoviedb.org/t/p/w500_and_h282_face/ucFj56P5fXnutVG2HWyDTIQLwVX.jpg'),
                        radius: 29,
                      ),
                    ),
                    // kHeight20,
                    VideoActionWidget(
                        icon: Icons.emoji_emotions_sharp, title: 'LOL'),

                    VideoActionWidget(icon: Icons.add, title: 'My List'),

                    VideoActionWidget(
                        icon: Icons.share_rounded, title: 'Share'),

                    VideoActionWidget(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: baseColor,
            size: 30,
            shadows: const [
              Shadow(
                  offset: Offset(
                    0.90,
                    0.70,
                  ),
                  blurRadius: 9.2)
            ],
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
