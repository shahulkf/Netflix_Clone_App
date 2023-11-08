import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/core/constants.dart';
import 'package:netflix_clone/presentation/search/widget/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w500_and_h282_face/4HodYYKEIsGOdinkGi2Ucz6X9i0.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        KHeight,
        Expanded(
          child: GridView.count( 
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 1.2/1.9,
            children: List.generate(
              20,
              (index) {
                return const MainCard();
              },
            ),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:const DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover
          
        ),
        borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}
