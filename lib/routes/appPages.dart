import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:momind/auth/login_page.dart';
import 'package:momind/auth/otp_screen.dart';
import 'package:momind/auth/signup_page.dart';
import 'package:momind/routes/appRoutes.dart';
import 'package:momind/views/audio_screen.dart';
import 'package:momind/views/bird_screen.dart';
import 'package:momind/views/breath_in.dart';
import 'package:momind/views/breath_in_second.dart';
import 'package:momind/views/breath_in_third.dart';
import 'package:momind/views/breath_out_fifth.dart';
import 'package:momind/views/breath_out_fourth.dart';
import 'package:momind/views/breath_out_sixth.dart';
import 'package:momind/views/breathing_screen.dart';
import 'package:momind/views/forest_screen.dart';
import 'package:momind/views/home_screen1.dart';
import 'package:momind/views/journal1.dart';
import 'package:momind/views/journal2.dart';
import 'package:momind/views/journal3.dart';
import 'package:momind/views/profile_screen.dart';
import 'package:momind/views/rain_screen.dart';
import 'package:momind/views/rain_screen2.dart';
import 'package:momind/views/search_screen.dart';
import 'package:momind/views/search_screen1.dart';
import 'package:momind/views/stream_screen.dart';
import 'package:momind/views/waterfall_screen.dart';
import 'package:momind/views/welcom_screen1.dart';
import 'package:momind/views/splash_screen.dart';
import 'package:momind/views/welcom_screen2.dart';
import 'package:momind/views/welcom_screen3.dart';
import 'package:momind/views/welcome_screen4.dart';

class AppPages {

static final pages=[

GetPage(name:AppRoutes.splash, page: ()=>  SplashScreen()),
GetPage(name: AppRoutes.home, page: ()=>  welcom_screen1()),
GetPage(name: AppRoutes.welcom2, page: ()=>  welcom_screen2()),
GetPage(name: AppRoutes.welcom3, page: ()=>  welcom_screen3()),
GetPage(name: AppRoutes.welcom4, page: ()=>  welcom_screen4()),
GetPage(name: AppRoutes.signuppage, page: ()=> SignUpPage()),
GetPage(name: AppRoutes.loginpage, page: ()=> LoginPage()),
GetPage(name: AppRoutes.otpscreen, page: ()=> OtpScreen()),
GetPage(name: AppRoutes.breathing, page: ()=> BreathingScreen()),
GetPage(name: AppRoutes.breathin, page: ()=> Breathe_in()),
GetPage(name: AppRoutes.breathinsecond, page: ()=> Breath_in_Second()),
GetPage(name: AppRoutes.breath_in_third, page: ()=> Breath_in_third()),
GetPage(name: AppRoutes.breath_out_fourth, page: ()=> Breath_out_fourth()),
GetPage(name: AppRoutes.breathe_out_fifth, page: ()=> Breathe_out_fifth()),
GetPage(name: AppRoutes.breathe_out_sixth, page: ()=> Breathe_out_sixth()),
GetPage(name: AppRoutes.homeScreen1, page: ()=> HomeScreen1()),
GetPage(name: AppRoutes.profile, page: ()=> ProfileScreen()),
GetPage(name: AppRoutes.searchScreen, page: ()=> SearchScreen()),
GetPage(name: AppRoutes.searchScreen1, page: ()=> SearchScreen1()),
GetPage(name: AppRoutes.journal, page: ()=> Journal1()),
GetPage(name: AppRoutes.journal, page: ()=> Journal2()),
GetPage(name: AppRoutes.journal3, page: ()=> Journal3()),
GetPage(name: AppRoutes.audioScreen, page: ()=> AudioScreen()),
GetPage(name: AppRoutes.rainscreen, page: ()=> RainScreen()),
GetPage(name: AppRoutes.rainscreen2, page: ()=> RainScreen2()),
GetPage(name: AppRoutes.birdScreen, page: ()=> BirdScreen()),
GetPage(name: AppRoutes.streamScreen, page: ()=> StreamScreen()),
GetPage(name: AppRoutes.forestScreen, page: ()=> ForestScreen()),
GetPage(name: AppRoutes.waterFallScreen, page: ()=> WaterFallScreen()),
];



}