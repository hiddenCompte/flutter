import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ios/common/helpers/is_dark_mode.dart';
import 'package:ios/common/widgets/appbar/app_bar.dart';
import 'package:ios/common/widgets/button/basic_app_button.dart';
import 'package:ios/core/configs/assets/app_images.dart';
import 'package:ios/core/configs/assets/app_vectors.dart';
import 'package:ios/core/configs/theme/app_colors.dart';
import 'package:ios/presentation/auth/pages/signin.dart';
import 'package:ios/presentation/auth/pages/signup.dart';

class SignupOrSignin  extends StatelessWidget{
  const SignupOrSignin ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
         body: Stack(
         
          children: [
             const BasicAppbar(),
               Align(
                alignment: Alignment.topRight,
                child : SvgPicture.asset(
                   AppVectors.topPattern,
                )
               ),
                Align(
                alignment: Alignment.bottomRight,
                child : SvgPicture.asset(
                   AppVectors.bottomPattern,
                )
               ),
              Align(
                alignment: Alignment.bottomLeft,
                child : Image.asset(
                   AppImages.billie,
                )
              ),
             Align(
                alignment: Alignment.center,
                child :Padding(
                  padding : EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                   
                    children: [
                    SvgPicture.asset(
                      AppVectors.logo,
                     ),
                    const  SizedBox(height : 55 ,),
                     const Text("Enjoy Listening To Music",
                     style  : TextStyle(
                      fontWeight : FontWeight.bold , 
                      fontSize : 26,
                     )
                     ),
                     const  SizedBox(height : 55 ,),
                    const Text("Spotify is a proprietary Swedish audio streaming and media services provider",
                     style  : TextStyle(
                      fontWeight : FontWeight.w500 , 
                      fontSize : 17,
                      color: AppColors.grey,
                     ),
                     textAlign: TextAlign.center,                 
                     ),
                     const  SizedBox(height : 55 ,),
                     Row(
                      children: [
                      Expanded(
                        flex:1 ,
                        child: BasicAppButton(title: "Register",
                         onPressed: (){
                         Navigator.push(context ,
                         MaterialPageRoute(builder: (BuildContext context) => SignupPage()
                         ),
                         );
                         }
                         )
                      ),
                      SizedBox(width : 20 ,),
                      Expanded(
                        flex: 1,
                        child: TextButton(onPressed: (){
                        Navigator.push(context ,
                         MaterialPageRoute(builder: (BuildContext context) => SigninPage()
                         ),
                         );
                        },
                         child: Text(
                          'Sign in', 
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: context.isDarkMode ?  Colors.white  :  Colors.black 
                         ),
                         ) 
                         ),
                      ),
                    
                    
                     ],
                     )
                    ]
                    
                  ),
                )
               ),

          ],
         ),
    );
  }

}