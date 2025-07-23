import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momind/constants/app_strings.dart';
import 'package:momind/widgets/apptext.dart';
import 'package:momind/widgets/custom_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(leading: GestureDetector(
  onTap: () {
    Get.back();
  },
  child: Icon(Icons.arrow_back)),),
body: Container(
  child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            
        children: [
         
          SizedBox(height: 93,),
          GestureDetector(
            onTap:() {
              Get.toNamed('breathing');
            },
            child: AppText(AppStrings.entercode,size: 24,  color: Color(0xFF4F7BCA), fontFamily: 'Roboto', fontWeight: null, textAlign: TextAlign.start,alignment: Alignment.centerLeft,)),
          SizedBox(height: 15,),
          AppText(AppStrings.pleaseentercode,size: 13,   color: Colors.black, fontFamily: 'Roboto', fontWeight: null,textAlign: TextAlign.start,alignment: Alignment.centerLeft,),
          SizedBox(height: 15,),
          AppText(AppStrings.number,size: 13,   color: Colors.black, fontFamily: 'Roboto', fontWeight: null,textAlign: TextAlign.start,alignment: Alignment.centerLeft,),
        SizedBox(height: 85,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(children: [
                 Form(child: Row(children: [
                            
                             ],)),SizedBox(
                height: 50,
                width: 40,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length ==1){
                      FocusScope.of(context).nextFocus();
                    }
                  },
                   textAlignVertical: TextAlignVertical.center, 
                   textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    hintText: '0',
                   enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4F7BCA))
                    ),
                     focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF4F7BCA), width: 2),
                  ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(width: 10,),
               Form(child: Row(children: [
             
              ],)),SizedBox(
                height: 50,
                width: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                   
                     hintText: '0',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4F7BCA))
                    ),
                     focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF4F7BCA), width: 2),
                  ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
                SizedBox(width: 10,),
               Form(child: Row(children: [
                          
                           ],)),SizedBox(
                height: 50,
                width: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                     hintText: '0'
            ,                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4F7BCA))
                    ),
                     focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF4F7BCA), width: 2),
                  ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
                SizedBox(width: 10,),
               Form(child: Row(children: [
             
              ],)),SizedBox(
                height: 50,
                width: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                     hintText: '0',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4F7BCA))
                    ),
                     focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF4F7BCA), width: 2),
                  ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
                SizedBox(width: 10,),
               Form(child: Row(children: [
             
              ],)),SizedBox(
                height: 50,
                width: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                     hintText: '0',
                   enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4F7BCA))
                    ),
                     focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF4F7BCA), width: 2),
                  ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
                SizedBox(width: 10,),
               Form(child: Row(children: [
             
              ],)),SizedBox(
                height: 50,
                width: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '0',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4F7BCA))
                    ),
                     focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF4F7BCA), width: 2),
                  ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],),
          ),
        ),
          
          SizedBox(height: 117,),
          Center(
            child: CustomButton(onPressed: () {
              
            }, widht: 327, height: 55, text: "Submit", color: Color(0xFF4F7BCA), buttontextcolor: Colors.white, borderColor: null,),
          )
        ],
      ),
    ),
  ),
),

    );
  }
}