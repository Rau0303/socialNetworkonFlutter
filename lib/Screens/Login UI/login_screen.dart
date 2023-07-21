import 'package:flutter/material.dart';
import 'package:scocial_network_flutter/Screens/Login%20UI/register_screen.dart';

import '../../Widgets/defaultTextField_widget.dart';
import '../../Widgets/emailTextField_widget.dart';
import '../../Widgets/passwordTextField_widget.dart';
import '../../Widgets/textButton_widget.dart';
import '../../Widgets/titleText_widget.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}



class _loginScreenState extends State<loginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController userPassController = TextEditingController();

  void onTapLogin(){}
  void onTapRegister(){
    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> const registerScreen()),(route) => false);
  }
  void onTapForgotPassword(){}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.40,
                  width: MediaQuery.of(context).size.width*0.75,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/login.png"),
                    ),
                  ),
                ),
                TitleText_widget("Вход"),

                emailTextField_widget(usernameController: usernameController,hintText: "Имя пользователя",),
                passwordTextField_widget(userPassController: userPassController,hintText: "пароль",),

                SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.07,
                    child: TextButton_widget(text: "Войти",onPressed: onTapLogin,)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    defaultTextButton_widget(text: "Зарегистрироваться",onPressed: onTapRegister,),
                    defaultTextButton_widget(text: "Забыли пароль?",onPressed: onTapForgotPassword,),
                  ],
                )



              ],
            ),
          ),
        ),
      ),

    );
  }
}






