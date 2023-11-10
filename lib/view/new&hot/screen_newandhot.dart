import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/view/new&hot/widgets/coming_soon.dart';
import 'package:netflix_clone/view/new&hot/widgets/everyone_watching.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              centerTitle: false,
              title: const Text(
                'New & Hot',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: baseColor),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                KWidth,
                Container(
                  color: const Color.fromARGB(255, 4, 96, 87),
                  width: 30,
                  height: 30,
                ),
                KWidth,
              ],
              bottom: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: baseColor,
                  indicator:
                      BoxDecoration(borderRadius: kRadius30, color: baseColor),
                  labelColor: kBlackColor,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                  tabs: const [
                    Tab(
                      text: ' 🍿 Coming Soon ',
                    ),
                    Tab(
                      text: ' 👀 Everyone`s Watching ',
                    ),
                  ]),
            )),
        body: TabBarView(children: [
          _buildComingSoon(context),
          _buildEveryonesWatching(context),
        ]),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, index) => const CominSoonWidget());
  }

  _buildEveryonesWatching(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, index) =>
            const EveryoneWatchingWidget());
  }
}
