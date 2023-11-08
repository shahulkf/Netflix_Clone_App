import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/core/colors/colors.dart';
import 'package:netflix_clone/domain/core/constants.dart';
import 'package:netflix_clone/presentation/search/widget/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w500_and_h282_face/lyHmhoRj3zXSdeCYbs2oOXLCF4K.jpg';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // KHeight,
         const SearchTextTitle(title: 'Top Searches',),
        KHeight,
        Expanded(
          child: ListView.separated(
           shrinkWrap: true,
            itemBuilder: (ctx, index) => const TopSearchItemTile(),
            separatorBuilder: (ctx, index) => kHeight20,
            itemCount: 10,
          ),
        ), 
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth =MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 70,
          decoration:  const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
              )
          ),
        ),

       const Expanded(
          child: Text('Movie Name',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16),
          ),
          ),
          // Icon(Icons.play_circle_outline,color: baseColor,size: 48,)
       const  CircleAvatar(
          backgroundColor: baseColor,
          radius: 25,
          child:  CircleAvatar(
          backgroundColor: kBlackColor,
          radius: 23,
          child: Icon(Icons.play_arrow_rounded,color: baseColor,size: 30,),
            ),
              ),
      ],
    );
  }
}
