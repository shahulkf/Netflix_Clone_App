import 'package:flutter/material.dart';
 final ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  BottomNavWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int newIndex, _) {
     return BottomNavigationBar( 
      currentIndex: newIndex,
      onTap: (index) {
        indexChangeNotifier.value = index;
      },
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme:IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      items: const[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

      BottomNavigationBarItem(
          icon: Icon(Icons.photo_library_outlined), label: 'New & Hot'),

      BottomNavigationBarItem(
          icon: Icon(Icons.emoji_emotions_outlined), label: 'Fast Laugh'),

      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      
      BottomNavigationBarItem(
          icon: Icon(Icons.download_for_offline_outlined), label: 'Downloads'),
    ]);
  
    },
    );
}

}