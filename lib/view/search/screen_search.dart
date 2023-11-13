import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/api/api.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/view/search/widget/search_idle.dart';
import 'package:netflix_clone/view/search/widget/search_result_page.dart';

ValueNotifier<bool> searching = ValueNotifier(false);

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                onChanged: (value) async{
                  if (value.isNotEmpty) {
                    searching.value = true;
                    searchResult.value= await Api().searchApi(value);
                  } else {
                    searching.value = false;
                    searchResult.value.clear();
                  }
                },
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(color: Colors.white),
              ),
              KHeight,
              ValueListenableBuilder(
                valueListenable: searching,
                builder: (context, value, child) {
                  if (value) {
                    return const Expanded(child: SearchResultWidget());
                  } else {
                    return const Expanded(child: SearchIdle());
                  }
                },
              ),
              KHeight,
            ],
          ),
        ),
      ),
    );
  }
}
