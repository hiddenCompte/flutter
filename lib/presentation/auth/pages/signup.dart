import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ios/common/widgets/appbar/app_bar.dart';
import 'package:ios/common/widgets/button/basic_app_button.dart';
import 'package:ios/core/configs/assets/app_vectors.dart';
import 'package:ios/data/models/auth/create_user_req.dart';
import 'package:ios/domain/usecases/auth/signup.dart';
import 'package:ios/presentation/auth/pages/signin.dart';
import 'package:ios/presentation/root/pages/root.dart';
import 'package:ios/service_locator.dart';

class SignupPage extends StatelessWidget {
   SignupPage({super.key});

  final TextEditingController _fullName  = TextEditingController();
  final TextEditingController _email  = TextEditingController();
  final TextEditingController _password  = TextEditingController();

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
         registerText(), 
         const SizedBox(height : 50,),
         fullNameField(context),
         const SizedBox(height:20 ,),
         emailField(context),
         const SizedBox(height:20 ,),
         passwordField(context),
         const SizedBox(height: 50,),
         BasicAppButton(title: 'Create Account',
          onPressed: () async {
                    var result = await sl<SignupUseCase>().call(
                      params : CreateUserReq(
                      fullName : _fullName.text.toString() ,
                      email : _email.text.toString() ,
                      password : _password.text.toString() ,
                      )
                    );

                    result.fold(
                     (l){
                      var snackbar = SnackBar(content : Text(l));
                       ScaffoldMessenger.of(context).showSnackBar(snackbar);
                     
                     },
                     (r){
                           Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (BuildContext context)=> const RootPage()),
                            (route)=>false
                            );     
                     }
                    );
          },
          )


    
    
      
    
      ],
    ),
  )
    );
  }


  Widget registerText(){
     return const  Text(
      'Register',
      style : TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
     );
  }

  Widget fullNameField(BuildContext context){
      return TextField(
        controller : _fullName,
        decoration: const InputDecoration(
          hintText: 'Full Name',
        ).applyDefaults(
          Theme.of(context).inputDecorationTheme
        ),
      );
  }

  Widget emailField(BuildContext context){
     return TextField(
      controller: _email,
        decoration: const InputDecoration(
          hintText: 'Enter Email',
        ).applyDefaults(
          Theme.of(context).inputDecorationTheme
        ),
      );
  }
   Widget passwordField(BuildContext context){
     return TextField(
      controller : _password,
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
            'Do You have an account' ,
            style  : TextStyle(
              fontWeight: FontWeight.w500,
              fontSize : 14 ,
            )
          ),
          TextButton(onPressed: (){
             Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) => SigninPage())
              );
          },
           child:  const Text('Sign In')
           )
        ],
      ),
    );
  }

}