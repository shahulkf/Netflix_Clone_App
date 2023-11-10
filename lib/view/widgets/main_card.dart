import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/api/api_constants.dart';
import 'package:netflix_clone/core/constants.dart';

class CardImages extends StatelessWidget {
  final String image;
  const CardImages({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      // color: Colors.amber,
      decoration:  BoxDecoration(
        borderRadius: kRadius20,
        image:  DecorationImage(
          image: NetworkImage(
            ApiConstants.imageBaseUrl+image
            ))
      ),
    );
  }
}