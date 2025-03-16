import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ios/common/widgets/appbar/app_bar.dart';
import 'package:ios/common/widgets/button/basic_app_button.dart';
import 'package:ios/core/configs/assets/app_vectors.dart';
import 'package:ios/presentation/auth/pages/signup.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      bottomNavigationBar: signinText(context),
      appBar: BasicAppbar(
        title : SvgPicture.asset(
          AppVectors.logo,
          height  : 40 ,width: 40,
        ),
       ),
  body : Padding(
    padding : const EdgeInsets.symmetric(
      horizontal: 40 ,
      vertical: 40,
    ) ,
    child: Column(
      children: [
         SigninText(), 
         const SizedBox(height : 50,),
         emailField(context),
         const SizedBox(height:20 ,),
         passwordField(context),
         const SizedBox(height: 50,),
         BasicAppButton(title: 'Sign In ',
          onPressed: (){

          },
          )


    
    
      
    
      ],
    ),
  )
    );
  }


  Widget SigninText(){
     return const  Text(
      'Sign In',
      style : TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
     );
  }

  Widget emailField(BuildContext context){
     return TextField(
        decoration: const InputDecoration(
          hintText: 'Enter Email',
        ).applyDefaults(
          Theme.of(context).inputDecorationTheme
        ),
      );
  }
   Widget passwordField(BuildContext context){
     return TextField(
        decoration: const InputDecoration(
          hintText: 'Password',
        ).applyDefaults(
          Theme.of(context).inputDecorationTheme
        ),
      );
  }
  Widget signinText(BuildContext context){

    return Padding(
      padding: EdgeInsets.symmetric(vertical : 30,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Not A Member   ?' ,
            style  : TextStyle(
              fontWeight: FontWeight.w500,
              fontSize : 14 ,
            )
          ),
          TextButton(onPressed: (){
              Navigator.pushReplacement(
                context,
               MaterialPageRoute(
                builder: (BuildContext context) =>  SignupPage(),
                )
              );
          },
           child:  const Text('Register Now')
           )
        ],
      ),
    );
  }

}