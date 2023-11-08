import 'package:flutter/material.dart';
import 'package:netflix_clone/infrastructure/widgets/main_card.dart';
import 'package:netflix_clone/infrastructure/widgets/main_title_widget.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    super.key,
    required this.title
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
      child: ListView(
        scrollDirection: Axis.horizontal,
          children: List.generate(
        10,
        (index) => const CardImages(),
      )),
    )
        ],
      );
  }
}