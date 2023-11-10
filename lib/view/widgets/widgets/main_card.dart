import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class CardImages extends StatelessWidget {
  const CardImages({
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
        image: const DecorationImage(
          image: NetworkImage(
            'https://www.themoviedb.org/t/p/w440_and_h660_face/okiB4NUriKKbGjAtVSzveicPTtu.jpg'))
      ),
    );
  }
}