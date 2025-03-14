import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ios/common/widgets/button/basic_app_button.dart';
import 'package:ios/core/configs/assets/app_images.dart';
import 'package:ios/core/configs/assets/app_vectors.dart';
import 'package:ios/core/configs/theme/app_colors.dart';
import 'package:ios/presentation/choose_mode/pages/choose_mode.dart';

class GetStarted extends StatelessWidget{
  const GetStarted({super.key});

  @override
    Widget build(BuildContext context ){
      return Scaffold(
        body : Stack(
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
                    AppImages.introBG,
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
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child :SvgPicture.asset(
                    AppVectors.logo
                  ),
                  ),
                 Spacer(),
                 Text(
                  "Enjoy Listening to music",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25
                  ),
                ), 
                SizedBox(height:20,),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13
                  ),
                textAlign: TextAlign.center,
                ), 
              SizedBox(height: 21,),
              BasicAppButton(
                title: 'Get Started',
                onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => const ChooseModePage()
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