import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/views/breath_in.dart';
import 'package:momind/views/breath_in_second.dart';
import 'package:momind/views/breath_in_third.dart';
import 'package:momind/views/breath_out_fifth.dart';
import 'package:momind/views/journal1.dart';
import 'package:momind/views/profile_screen.dart';


class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  int _selectedIndex=0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex= index;
    });
  }
  final List<Widget> _pages=[
    const Breath_in_Second(),
    const Journal1(),
    const Breathe_in(),
    const Breathe_out_fifth(),
    const ProfileScreen()
  ];

   @override

  Widget build(BuildContext context) {
    return Scaffold(
     
        body:_pages[_selectedIndex] ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: const Color(0xFF4F7BCA),
        unselectedItemColor: Colors.grey,
        items:  [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap:() {
                Get.toNamed("journa2");
              },
              child: Image.asset("assets/images/journal.png")),
//             icon:Icon(
//   Icons.home_outlined,
// ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:  GestureDetector(
              onTap: () {
                Get.toNamed("audioScreen");
              },
              child: Image.asset("assets/images/audio.png")),
            label: '',
          ),
          BottomNavigationBarItem(
             icon: GestureDetector(
              onTap:() {
                Get.toNamed('searchScreen');
              },
              child: Image.asset("assets/images/home.png")),
            label: 'Profile',
          ),  BottomNavigationBarItem(
            icon: Image.asset("assets/images/wellness.png"),
            label: 'Search',
          ),
          BottomNavigationBarItem(
             icon: GestureDetector(
              onTap: () {
                 Get.toNamed('profile');
              },
              child: Image.asset("assets/images/profile.png")),
            label: 'Profile',
          )
          
          
          ,],
          ),
    );
  }
}