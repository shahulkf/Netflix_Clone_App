import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/core/colors/colors.dart';
import 'package:netflix_clone/domain/core/constants.dart';
import 'package:netflix_clone/infrastructure/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
 ScreenDownloads({super.key});

final WidgetList = [
            const _SmartDownloads(),
            Section2(),
             const Section3(),   
          ];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: 'Downloads'),
        ),
        body:ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: ((context, index) => WidgetList[index]), 
          separatorBuilder: (ctx,index)=>SizedBox(height: 30,), 
          itemCount: WidgetList.length));
  }
}
class Section2 extends StatelessWidget {
   Section2({super.key});

   final List imageList = [
    "https://www.themoviedb.org/t/p/w440_and_h660_face/voHUmluYmKyleFkTu3lOXQG702u.jpg",
    "https://www.themoviedb.org/t/p/w440_and_h660_face/iwsMu0ehRPbtaSxqiaUDQB9qMWT.jpg",
    "https://www.themoviedb.org/t/p/w440_and_h660_face/A4j8S6moJS2zNtRR8oWF08gRnL5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
        final Size size = MediaQuery.of(context).size;

    return Column(
      children: [

          const Text(
              'Introducing Downloads for you',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            KHeight,
            const Text(
              "We'll download a personalized selection of movie and shows for you , There is always something to watch on your device ",
              style: TextStyle(color: Colors.grey, fontSize: 19),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: size.width,
              height: size.width,
              // color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: size.width * 0.42,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  DownloadsImageWidget(
                    imageList: imageList[0],
                    margin: const EdgeInsets.only(right: 140,top: 40),
                    angle: -30,
                    radius: 10,
                    size: Size(size.width * 0.4, size.width * 0.58),
                  ),
                  DownloadsImageWidget(
                    imageList: imageList[1],
                    margin: const EdgeInsets.only(left: 140,top: 40 ),
                    angle: 30,
                    radius: 10,
                    size: Size(size.width * 0.4, size.width * 0.58),
                  ),
                  DownloadsImageWidget(
                      size: Size(size.width * 0.45, size.width * 0.70),
                      imageList: imageList[2],
                      margin: const EdgeInsets.only(bottom: 10,top: 40),
                      )
                ],
              ),
            ),
        
      ],
    );
  }
}

class Section3  extends StatelessWidget {
  const Section3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          width: double.infinity,
           child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: kButtonColorBlue,
                child:const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Set  up',
                    style: TextStyle(
                        color: baseColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
         ),
          KHeight,
          KHeight,
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: kButtonColorWhite,
              child: const Text(
                'See what you can download',
                style: TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            )
       
      ],
    );
  }
}
class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        KWidth,
        Icon(
          Icons.settings,
          color: baseColor,
        ),
        KWidth,
        Text(
          'Smart Downloads',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {super.key,
      this.angle = 0,
      this.radius = 10,
      required this.imageList,
      required this.size,
      required this.margin});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          // margin: margin,
          width: size.width,
          height: size.height,
          // color: KBlackColor,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            ),
          ),
        ),
      ),
    );
  }
}
