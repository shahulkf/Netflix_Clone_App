import 'package:flutter/material.dart';
import 'package:netflix_clone/view/fastlaugh/widgets/video_list_item.dart';
import 'package:netflix_clone/view/home/screen_home.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ValueListenableBuilder(
        valueListenable: topTen,
        builder: (context,value,_) {
          return PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: value.length,
           itemBuilder: (context, index) =>  VideoListItem(index: index,image: value[index].posterPath),
          );
        }
      ))
    ); 
  }
}