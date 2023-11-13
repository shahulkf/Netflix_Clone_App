import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/model/movie.dart';
import 'package:netflix_clone/view/home/widget/custom_icon.dart';
import 'package:netflix_clone/view/home/widget/video_widget.dart';

class CominSoonWidget extends StatelessWidget {
  final Movie movie;
  const CominSoonWidget({ 
    required this.movie,
    super.key,
    
  });

 

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        const SizedBox(
          height: 500,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('FEB',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kGreyColor)),
              Text(
                '11',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 530,
          child:  Column(
            children: [
              VideoWidget(image: movie.backdropPath),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text(
                          movie.title,overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -3),
                        ),
                      ),
                      const Spacer(),
                      const Row(
                        children: [
                          CustomIconWidget(
                            icon: Icons.notifications,
                            label: 'Remind Me',
                            iconsize: 25,
                            textsize: 10,
                          ),
                          KWidth,
                          CustomIconWidget(
                            icon: Icons.info_outline,
                            label: 'Info',
                            iconsize: 25,
                            textsize: 10,
                          ),
                          KWidth,
                        ],
                      )
                    ],
                  ),
                  KHeight,
                  const Text(
                    'Coming on Friday',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  kHeight20,
                  Text(
                    movie.title,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1),
                  ),
                  Text(
                   movie.overview,
                    style: const TextStyle(
                        color: kGreyColor,
                         fontWeight: FontWeight.bold
                         ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

