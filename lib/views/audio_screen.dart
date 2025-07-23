import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';
import 'package:momind/widgets/custom_appbar.dart';
import 'package:momind/widgets/sound_item.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Match with number of TabBar tabs
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Journal',
          rightIcon1: Icons.mood,
          rightIcon2: Icons.notifications_none,
          onRightIcon1Tap: () {},
          onRightIcon2Tap: () {},
          onLeftTap: () {},
          onRightTap: () {},
          titlecolor: Colors.white,
          color: Color(0xFF4F7BCA),
          text: 'Audio',
          textsize: 14,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.star), text: 'Favorite'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // ✅ Home Tab with Grid
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFEEF4FF),
                    Color(0xFFDBE5F8),
                  ],
                ),
              ),
              
              child: Column(
                children: [
                   SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      AppText(AppStrings.soundscapes,size: 18, color: Color(0xFF4F7BCA), fontFamily: "Roboto", fontWeight: null),
                      SizedBox(width: 45,),
                      AppText(AppStrings.music, size: 18, color: Color(0xFF969EAD), fontFamily: "Roboto", fontWeight: null),
                       SizedBox(width: 45,),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('rainscreen');
                        },
                        child: AppText(AppStrings.podcasts, size: 18, color: Color(0xFF969EAD), fontFamily: "Roboto", fontWeight: null))
                    ],),
                  ),
                  const SizedBox(height: 55),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 16,
                        crossAxisSpacing:16,
                         childAspectRatio: 103 / 139,
                        // padding: EdgeInsets.all(16),
                        children: const [
                          SoundItem(
                              imagePath: 'assets/images/rainy.png',
                              height: 139,
                              widht: 103,
                              label: 'Rain',),
                          SoundItem(
                              imagePath: 'assets/images/bird.png',
                              label: "Birds",
                              height: null,
                              widht: null),
                          SoundItem(
                              imagePath: 'assets/images/wavee.png',
                              label: "Stream",
                              height: null,
                              widht: null),
                          SoundItem(
                              imagePath: 'assets/images/cloud.png',
                              label: "Heavy Rain",
                              height: null,
                              widht: null),
                          SoundItem(
                              imagePath: 'assets/images/tree.png',
                              label: "Forest",
                              height: null,
                              widht: null),
                          SoundItem(
                              imagePath: 'assets/images/waterfall.png',
                              label: "Waterfall",
                              height: null,
                              widht: null),
                          SoundItem(
                              imagePath: 'assets/images/forest.png',
                              label: "Forest Rain",
                              height: null,
                              widht: null),
                          SoundItem(
                              imagePath: 'assets/images/birds.png',
                              label: "Forest Birds",
                              height: null,
                              widht: null),
                          SoundItem(
                              imagePath: 'assets/images/Gro.png',
                              label: "Ocean Wave",
                              height: null,
                              widht: null),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ✅ Favorite Tab
            
          ],
        ),
      ),
    );
  }
}
