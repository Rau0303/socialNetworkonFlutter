import 'package:flutter/material.dart';
import 'package:scocial_network_flutter/Screens/Home%20UI/home_screen.dart';
import 'package:scocial_network_flutter/Screens/Home%20UI/profile_screen.dart';
import 'package:scocial_network_flutter/Widgets/appbarTitle_widget.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();

  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}

class _homeScreenState extends State<homeScreen> {
  void _openDrawer() {
    homeScreen.scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScreen.scaffoldKey,
      appBar: AppBar(
        title: const appbarTitle_widget(text: "Главная"),
        backgroundColor: Colors.white70,
        centerTitle: true,
        leading: IconButton(
          onPressed: _openDrawer,
          icon: const Icon(Icons.menu, color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: ListView(

          padding: EdgeInsets.zero,

          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),

                //IconButton - ды суретке ауыстырамын потом
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen()));
              }, icon: Icon(Icons.account_circle_outlined,
              size: 70,),)
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('выход'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }
}
