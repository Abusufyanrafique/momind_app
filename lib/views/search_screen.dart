import 'package:flutter/material.dart';
import 'package:momind/widgets/custom_appbar.dart';
import 'package:momind/widgets/therapy_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
  title: 'Profile!',
  rightIcon1: Icons.mood,
  rightIcon2: Icons.notifications_none,
  onRightIcon1Tap: () {},
  onRightIcon2Tap: () {},
  onLeftTap: () {},
  onRightTap: () {}, 
  titlecolor: Colors.white,
  color: Colors.blue, text: 'Profile', textsize: 14, bottom: TabBar(tabs: []),
) ,
      backgroundColor: Color(0xFFEAF2FF),
      body: TherapyCard(),
    );
  }
}