// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/controller/api/api.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/model/movie.dart';
import 'package:netflix_clone/view/widgets/main_title_card.dart';
import 'package:netflix_clone/view/widgets/main_title_widget.dart';
import 'package:netflix_clone/view/home/widget/custom_icon.dart';
import 'package:netflix_clone/view/home/widget/number_card.dart';

ValueNotifier <bool> scrollnotifier = ValueNotifier(true);
ValueNotifier<List<Movie>> nowPlaying = ValueNotifier([]);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  getDatasFromApi()async{
    nowPlaying.value = await Api().getNowPlaying();
  }

  @override
  Widget build(BuildContext context) {
    getDatasFromApi();
    return Scaffold(
        body:ValueListenableBuilder(valueListenable: scrollnotifier, builder: (BuildContext context, value, _) {
      return  NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        final ScrollDirection direction = notification.direction;
        if(direction==ScrollDirection.reverse){
          scrollnotifier.value = false;
        }else if (direction == ScrollDirection.forward){
          scrollnotifier.value = true;
        }
        return true;
      },
      child: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    // child: Image(image: NetworkImage(kMainImage)),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(kMainImage),
                    )),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomIconWidget(icon: Icons.add, label: 'MyList'),
                          _playButton(),
                          CustomIconWidget(
                            icon: Icons.info_outline,
                            label: 'Info',
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              MainTitleCard(
                listNotifier: nowPlaying,
                title: 'Released in the Past Year',
              ),
              MainTitleCard(
                listNotifier: nowPlaying,
                title: 'Trending Now',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainTitleWidget(
                    title: 'Top 10 Tv Shows in India Today',
                  ),
                  kHeight20,
                  LimitedBox(
                    maxHeight: 200,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          10,
                          (index) => NumberCard(index: index),
                        )),
                  )
                ],
              ),
              MainTitleCard(title: 'Tense Dramas',listNotifier: nowPlaying),
              MainTitleCard(title: 'South Indian Cinemas',listNotifier: nowPlaying,),
            ],
          ),
          scrollnotifier.value == true? AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            width: double.infinity,
          height: 90,
          color: Colors.black.withOpacity(0.3),
          child: Column(children: [
         Row(
          children: [
            Image(image: NetworkImage('https://1000logos.net/wp-content/uploads/2017/05/emblem-Netflix.jpg',),
            width: 60,
            height: 60,),
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
            
          ],
         ),

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:const [
            Text('TV Shows',style: ktextStyle,),
            Text('Movies',style: ktextStyle,),
            Text('Categories',style: ktextStyle,)
          ],
         )
          ],),
          ):kHeight20
        ]
      ),
    );
          
        }));
    
  }

  TextButton _playButton() {
    return TextButton.icon(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          )),
          backgroundColor: MaterialStatePropertyAll(baseColor),
        ),
        onPressed: () {},
        icon: Icon(
          Icons.play_arrow,
          color: kBlackColor,
          size: 30,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
