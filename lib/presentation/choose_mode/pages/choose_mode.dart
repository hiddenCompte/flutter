

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui' as ui;
import 'package:ios/common/widgets/button/basic_app_button.dart';
import 'package:ios/core/configs/assets/app_images.dart';
import 'package:ios/core/configs/assets/app_vectors.dart';
import 'package:ios/core/configs/theme/app_colors.dart';
import 'package:ios/presentation/auth/pages/signup_or_signin.dart';
import 'package:ios/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseModePage extends StatelessWidget{
      const ChooseModePage({super.key});


      @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
           body:  Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 40 ,
                horizontal: 40
              ),
              decoration: BoxDecoration(
                image : DecorationImage(
                  fit : BoxFit.fill ,
                  image : AssetImage(
                    AppImages.chooseModeBG,
                  )
                 )
              ),
            ),

            Container(
               // ignore: deprecated_member_use
               color: Colors.black.withOpacity(0.15),
            ),
            Padding(
              padding: const  EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 40,
              ),
              child: Column(
                children:[
                  Align(
                    alignment: Alignment.topCenter,
                    child :SvgPicture.asset(
                    AppVectors.logo
                  ),
                  ),
                 Spacer(),
                 Text(
                  "Choose Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25
                  ),
                ), 
              SizedBox(height :60),

              Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                        },
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ui.ImageFilter.blur(sigmaX:10,sigmaY:10),
                            child: Container(
                            height : 100,
                            width :100 ,
                        
                            decoration: BoxDecoration(
                               color: const Color(0xff30393C).withOpacity(0.5),
                               shape: BoxShape.circle
                            ),
                            child: SvgPicture.asset(
                               AppVectors.moon,
                               fit : BoxFit.none ,
                            ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height : 15 ,),
                      Text('Dark Mode',
                      style : TextStyle(
                        fontWeight : FontWeight.w500,
                        fontSize: 17,
                        color : AppColors.grey
                      )
                      )
                    ],
                 
                  ),
                  SizedBox(width : 60,),
                  Column(
                    children: [
                      GestureDetector(  
                          onTap: (){
                          context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                        },
                        child: ClipOval(
                          child: BackdropFilter(
                            filter: ui.ImageFilter.blur(sigmaX:10,sigmaY:10),
                            child: Container(
                            height:100,
                            width :100,
                            decoration: BoxDecoration(
                              color: const Color(0xff30393C).withOpacity(0.5),
                              shape: BoxShape.circle
                            ),
                             child: SvgPicture.asset(
                               AppVectors.sun,
                               fit : BoxFit.none ,
                            ),
                            ),
                          ),
                        ),
                      ),
                     SizedBox(height : 15 ,),
                     Text('Light Mode',
                      style : TextStyle(
                        fontWeight : FontWeight.w500,
                        fontSize: 17,
                        color : AppColors.grey
                      )
                      )
                    
                    ],
                  ),
                ],
              ),
               const SizedBox(height : 150,),
              BasicAppButton(
                title: 'Continue',
                onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => const SignupOrSignin()
                    )
                    );  
                })
                ],
              ),
            )
          ],
        )
    );
  }


}
