
import 'package:flutter/material.dart';
import 'package:scocial_network_flutter/Screens/Login%20UI/login_screen.dart';
import 'package:scocial_network_flutter/Widgets/defaultTextField_widget.dart';
import 'package:scocial_network_flutter/Widgets/emailTextField_widget.dart';
import 'package:scocial_network_flutter/Widgets/passwordTextField_widget.dart';
import 'package:scocial_network_flutter/Widgets/textButton_widget.dart';
import 'package:scocial_network_flutter/Widgets/titleText_widget.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userPassController = TextEditingController();
  TextEditingController userRePassController = TextEditingController();
  
  void onTapRegister(){}
  void onTapLogin(){
   Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> const loginScreen()),(route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TitleText_widget("Регистрация"),
                emailTextField_widget(usernameController: usernameController, hintText: "имя пользователя"),
                emailTextField_widget(usernameController: emailController, hintText: "почта"),
                passwordTextField_widget(userPassController: userPassController, hintText: "Введите пароль"),
                passwordTextField_widget(userPassController: userRePassController, hintText: "Повторите пароль"),

                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.07,
                  child: TextButton_widget(
                      text: "Зарегистрироваться",
                      onPressed: onTapRegister),
                ),


                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Уже есть аккаунт?"),
                    defaultTextButton_widget(text: "Войти!", onPressed: onTapLogin),
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
