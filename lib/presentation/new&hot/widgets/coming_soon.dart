import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/core/colors/colors.dart';
import 'package:netflix_clone/domain/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/custom_icon.dart';
import 'package:netflix_clone/presentation/home/widget/video_widget.dart';

class CominSoonWidget extends StatelessWidget {
  const CominSoonWidget({
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
          height: 500,
          child: const Column(
            children: [
              VideoWidget(),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Tall Girl 2',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -3),
                      ),
                      Spacer(),
                      Row(
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
                  Text(
                    'Coming on Friday',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  kHeight20,
                  Text(
                    'Tall Girl 2',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1),
                  ),
                  Text(
                    "Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence -- and her relationship --  into a tailspin",
                    style: TextStyle(
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

