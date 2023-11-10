import 'package:flutter/material.dart';
import 'package:netflix_clone/model/movie.dart';
import 'package:netflix_clone/view/widgets/main_card.dart';
import 'package:netflix_clone/view/widgets/main_title_widget.dart';

class MainTitleCard extends StatelessWidget {
  final String title;

  final ValueNotifier<List<Movie>> listNotifier;
  const MainTitleCard({
    super.key,
    required this.title,
    required this.listNotifier
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitleWidget(
      title: title,
    ),
    LimitedBox(
      maxHeight: 200,
      child: ValueListenableBuilder(
        valueListenable: listNotifier,
        builder: (context , value,_) {
          return ListView(
            scrollDirection: Axis.horizontal,
              children: List.generate(
            10,
            (index) =>  CardImages(image: value[index].posterPath),
          ));
        }
      ),
    )
        ],
      );
  }
}