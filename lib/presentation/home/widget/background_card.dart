import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/core/colors/colors.dart';
import 'package:netflix_clone/domain/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/custom_icon.dart';

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 600,
                  // child: Image(image: NetworkImage(kMainImage)),
                  decoration: const BoxDecoration(
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
                        const CustomIconWidget(icon: Icons.add, label: 'MyList'),
                        _playButton(),
                        const CustomIconWidget(
                          icon: Icons.info_outline,
                          label: 'Info',
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
  }

  TextButton _playButton() {
    return TextButton.icon(
        style: const ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          )),
          backgroundColor: MaterialStatePropertyAll(baseColor),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          color: kBlackColor,
          size: 30,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
