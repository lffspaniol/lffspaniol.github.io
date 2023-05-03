import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

@override
class _MyAppState extends State<MyApp> {
  bool isSwitched = false;

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isSwitched ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Title'), actions: [
          Switch(
              activeColor: Colors.greenAccent,
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = !isSwitched;
                });
              }),
        ]),
        body: Center(
          child: MyDesign(),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0.0),
                accountName: Text('Instructive Tech'),
                accountEmail: Text('admin@instructivetech.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fdac34-1.fna.fbcdn.net/v/t39.30808-6/271190257_281054324087750_6540061642459300040_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFttG8HoFhQR66PER8P1qlCmYLMf-XZ-6eZgsx_5dn7p_GuyzigLxTlWB6hG8P9_Xyl-vNoVRcDCM4TC4Cq0-OQ&_nc_ohc=AEZU2a_wVEgAX-GrhuG&_nc_zt=23&_nc_ht=scontent.fdac34-1.fna&oh=00_AT8k_MqY1MK22Uyis0AYbw6tmMVMs4_hkAIiuHexRT2jhg&oe=620911D4'),
                ),
                currentAccountPictureSize: Size(60, 60),
              ),
              ListTile(
                title: Text('This is Titel'),
                subtitle: Text('Subtitle'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text('This is Titel'),
                subtitle: Text('Subtitle'),
                leading: Icon(Icons.account_box_outlined),
              ),
              ListTile(
                title: Text('This is Titel'),
                subtitle: Text('Subtitle'),
                leading: Icon(Icons.info),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDesign extends StatefulWidget {
  const MyDesign({Key? key}) : super(key: key);

  @override
  _MyDesignState createState() => _MyDesignState();
}

class _MyDesignState extends State<MyDesign> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
