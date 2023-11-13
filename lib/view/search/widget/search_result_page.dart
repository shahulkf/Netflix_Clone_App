import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/api/api_constants.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/model/movie.dart';
import 'package:netflix_clone/view/home/screen_home.dart';
import 'package:netflix_clone/view/search/widget/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w500_and_h282_face/4HodYYKEIsGOdinkGi2Ucz6X9i0.jpg';

ValueNotifier<List<Movie>>searchResult = ValueNotifier([]);
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
          child: ValueListenableBuilder(
            valueListenable: searchResult,
            builder: (context,value,_) {
              if(value.isEmpty){
                return const Center(child: Text("Search Not Found"),);
              }
              return GridView.count( 
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 1.2/1.9,
                children: List.generate(
                  value.length,
                  (index) {
                    return MainCard(movie: value[index],);
                  },
                ),
              );
            }
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final Movie movie;
  const MainCard({super.key,required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(ApiConstants.imageBaseUrl+movie.posterPath),
          fit: BoxFit.cover
          
        ),
        borderRadius: BorderRadius.circular(7)
      ),
    );
  }
}
