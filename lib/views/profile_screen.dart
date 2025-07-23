
import 'package:flutter/material.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';
import 'package:momind/widgets/custom_appbar.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
),

      body: Container(
        padding: EdgeInsets.all(13.0),
        decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
            Color(0xFFEEF4FF),
            Color(0xFFDBE5F8),
          ]),
        ),
        
        
        child: SingleChildScrollView(
          
          scrollDirection: Axis.vertical,
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 31,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue[200],
                    child: Image.asset(
                     fit: BoxFit.cover,
                      "assets/images/person.png"),
                  ),
                  // SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     AppText(AppStrings.ivarO, color: Color(0xFF4F7BCA), fontFamily: "Roboto", fontWeight: null),
                          AppText(AppStrings.ivarOgmail, color: Colors.black, fontFamily: "Roboto", fontWeight: null),
                           SizedBox(height: 20),
                           
                    ],),
                  ),
                  SizedBox(width: 100,),
                  Icon(Icons.settings,color: Color(0xFF4F7BCA),)
                ],
              ),
              SizedBox(height: 24),
            
              Container(
            width: 343,
            height: 86,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Color(0xFFFFD54F), 
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                // Text Column
                Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              AppText(AppStrings.join, size: 15, fontFamily: "Roboto", fontWeight: null),
             
              SizedBox(height: 4),
              AppText(AppStrings.start, size: 12, fontFamily: 'Roboto', fontWeight: null)
              
            ],
          ),
                ),
          
                // Image
                SizedBox(width: 12),
                ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(
            'assets/images/brain.png', // Make sure this image is in your assets
            height: 60,
            width: 60,
            fit: BoxFit.cover,
          ),
                ),
              ],
            ),
          ),
          
              SizedBox(height: 24),
              
              
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Icon Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
            _buildTopIcon(Icons.favorite, 'Feelings'),
            _buildTopIcon(Icons.sms_failed, 'SOS'),
            _buildTopIcon(Icons.flight, 'Flight Mode'),
            _buildTopIcon(Icons.article, 'Blogs'),
                      ],
                ),
              ),
              SizedBox(height: 24),
                      
              // Pill Box Container
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                 width: 343,
                 height: 90,
                  margin: EdgeInsets.symmetric(horizontal: 1),
                  // padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                        color: Color(0xFF527BC6),
                        borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            // Pill Box Title with Arrow
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0,top: 5),
                              child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                AppText(AppStrings.pill, size: 16, fontFamily: "Roboto", fontWeight: null),
                                               
                                                Icon(Icons.chevron_right, color: Colors.white),
                                              ],
                              ),
                            ),
                            SizedBox(height: 10),
                        
                            // Days of the Week
                            SingleChildScrollView
                            (scrollDirection: Axis.horizontal,
                                  child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    
                    children: [
                      _dayBox('Sun', selected: true),
                      SizedBox(width: 8,),
                      _dayBox('Mon'),
                       SizedBox(width: 8,),
                      _dayBox('Tue'),
                       SizedBox(width: 8,),
                      _dayBox('Wed'),
                       SizedBox(width: 8,),
                      _dayBox('Thu'),
                       SizedBox(width: 8,),
                      _dayBox('Fri'),
                       SizedBox(width: 8,),
                      _dayBox('Sat'),
                    ],
                  ),
                                  ),
                            ),
                        ],
                  ),
                ),
              ),
            ],
                      ),
          
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                      'Today',
                      style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
                      ),
                ),
              ),
              SizedBox(height: 16),
                      
              // Grid of cards (2x2)
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(children: [
                 Column(
                   children: [
                     Container(
                    width: 162,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
                    
                    child: Column(
                      
                      children: [
                        SizedBox(height: 20,),
                        Row(children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 24.0),
                           child: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0xFF4F7BCA)
                            ),
                            
                            child: Image.asset('assets/images/leaf.png'),
                           ),
                         ),
                         SizedBox(width: 8,),
                        AppText(AppStrings.breath, size: 12, color: Color(0xFF717171), fontFamily: "Roboto", fontWeight: null),
                        SizedBox(width: 30,),
                        Image.asset('assets/images/eva_arro.png')
                        ],),
                        SizedBox(height: 20,),
                        AppText(AppStrings.min, size: 30, color: Color(0xFF4F7BCA), fontFamily: "Roboto", fontWeight: FontWeight.w600),
                      ],
                    ),
                  ),
                   ],
                 ),
                  Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 162,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      
                      child: Column(
                        
                        children: [
                          SizedBox(height: 20,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 24.0),
                               child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Color(0xFF4F7BCA)
                                ),
                                
                                child: Image.asset('assets/images/leaf.png'),
                               ),
                             ),
                             SizedBox(width: 8,),
                            AppText(AppStrings.meditation, size: 12, color: Color(0xFF717171), fontFamily: "Roboto", fontWeight: null),
                            SizedBox(width: 30,),
                            Image.asset('assets/images/eva_arro.png')
                            ],),
                          ),
                          SizedBox(height: 20,),
                          AppText(AppStrings.mins, size: 30, color: Color(0xFF4F7BCA), fontFamily: "Roboto", fontWeight: FontWeight.w600),
                        ],
                      ),
                    ),
                  )
                ],),
                 
               ],),

             ),

             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(children: [
                 Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 162,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      
                      child: Column(
                        
                        children: [
                          SizedBox(height: 20,),
                          Row(children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 24.0),
                             child: Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xFF4F7BCA)
                              ),
                              
                              child: Image.asset('assets/images/leaf.png'),
                             ),
                           ),
                           SizedBox(width: 8,),
                          AppText(AppStrings.breath, size: 12, color: Color(0xFF717171), fontFamily: "Roboto", fontWeight: null),
                          SizedBox(width: 30,),
                          Image.asset('assets/images/eva_arro.png')
                          ],),
                          SizedBox(height: 20,),
                          AppText(AppStrings.min, size: 30, color: Color(0xFF4F7BCA), fontFamily: "Roboto", fontWeight: FontWeight.w600),
                        ],
                      ),
                    ),
                  )
                ],),
                  Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(.0),
                    child: Container(
                      width: 162,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      
                      child: Column(
                        
                        children: [
                          SizedBox(height: 20,),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 24.0),
                               child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Color(0xFF4F7BCA)
                                ),
                                
                                child: Image.asset('assets/images/leaf.png'),
                               ),
                             ),
                             SizedBox(width: 8,),
                            AppText(AppStrings.meditation, size: 12, color: Color(0xFF717171), fontFamily: "Roboto", fontWeight: null),
                            SizedBox(width: 30,),
                            Image.asset('assets/images/eva_arro.png')
                            ],),
                          ),
                          SizedBox(height: 20,),
                          AppText(AppStrings.mins, size: 30, color: Color(0xFF4F7BCA), fontFamily: "Roboto", fontWeight: FontWeight.w600),
                        ],
                      ),
                    ),
                  )
                ],),
                 
               ],),

             ),


             
            
            ],
                      ),
          
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTopIcon(IconData icon, String label) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xFF527BC6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(icon, color: Colors.white, size: 24),
      ),
      SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(
          color: Color(0xFF527BC6),
          fontSize: 14,
        ),
      ),
    ],
  );
}

Widget _dayBox(String day,  {bool selected = false}) {
  return Container(
    height: 32,
    width: 37,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: selected ? Colors.white : Colors.white.withOpacity(0.3),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      
      day,
      style: TextStyle(
        fontSize: 10,
        color: selected ? Color(0xFF527BC6) : Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget _buildActivityCard(IconData icon, String title, String time, BuildContext context) {
  // double cardWidth = (MediaQuery.of(context).size.width - 16 * 2 - 16) / 2;

  return Container(
    height: 50,
    
    width: 50,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Color(0xFFE9F0FB),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
          
            SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
            ),
            Icon(Icons.chevron_right, size: 20, color: Colors.grey[400]),
          ],
        ),
        SizedBox(height: 20),
        Text(
          time,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF527BC6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}