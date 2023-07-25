import 'package:flutter/material.dart';
import 'package:scocial_network_flutter/Widgets/appbarTitle_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  late bool switchButton = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const appbarTitle_widget(text: "Профиль"),
        centerTitle: true,
        backgroundColor: Colors.white70,
        leading: IconButton(
            onPressed: (){
              Navigator.popUntil(context, (route) => false);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
        Switch(
        // This bool value toggles the switch.
        value: switchButton,
        activeColor: Colors.deepOrange,
        onChanged: (bool value) {
          // This is called when the user toggles the switch.
          setState(() {
            switchButton = value;
          });
        },
      )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container_widget(
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("adsf"),
                Text("adsf"),
                Text("adsf"),
                Text("adsf"),
                Text("adsf"),
                Text("adsf"),
                Text("adsf"),
                Text("adsf"),
                Text("adsf"),
              ],
            ),
            )

          ],
        ),
      ),
    );
  }
}

class Container_widget extends StatelessWidget {
  const Container_widget({
    super.key,
    required this.widget
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white70
        ),
        child: widget,
      ),
    );
  }
}
