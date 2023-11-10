import 'package:flutter/material.dart';
import 'package:netflix_clone/view/downloads/widgets/main_page/widgets/bottomnav.dart';
import 'package:netflix_clone/view/downloads/widgets/screen_downloads.dart';
import 'package:netflix_clone/view/fastlaugh/screen_laugh.dart';
import 'package:netflix_clone/view/home/screen_home.dart';
import 'package:netflix_clone/view/new&hot/screen_newandhot.dart';
import 'package:netflix_clone/view/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    NewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: BottomNavWidget(),
      ),
    );
  }
}
