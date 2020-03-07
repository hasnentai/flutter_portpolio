import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive/device.dart';

import 'dart:html' as html;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xffE93549),
          fontFamily: 'Poppins',
          iconTheme: IconThemeData(color: Colors.white)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DeviceFactory deviceFactory = new DeviceFactory();
  Map<String, dynamic> currentDeviceMap;
  String currentDevice;
  Device device;
  double tileFontSize;
  double subTitleFontSize;
  double iconSize;
  double deviceWidth;
  double socialMediaIcons;

  Icon sideMenuIcons(IconData iconName, double iconSize, Color iconColor) {
    return Icon(
      iconName,
      size: iconSize,
      color: iconColor,
    );
  }

  Widget backgroundImage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1581472723648-909f4851d4ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")),
        color: Color.fromRGBO(0, 0, 0, 0.6),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6.9, sigmaY: 6.9),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
        ),
      ),
    );
  }

  Widget myIntro(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 58.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hi,",
                    style: TextStyle(
                        fontSize: deviceWidth / tileFontSize,
                        color: Colors.white),
                  ),
                  Text(
                    "I'm Hasnen Tai,",
                    style: TextStyle(
                        fontSize: deviceWidth / tileFontSize,
                        color: Colors.white),
                  ),
                  Text(
                    "Flutter Developer.",
                    style: TextStyle(
                        fontSize: deviceWidth / tileFontSize,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      "Frontend Developer // YouTuber // Public Speaker",
                      style: TextStyle(
                          fontSize: deviceWidth / subTitleFontSize,
                          color: Colors.greenAccent),
                    ),
                  ),
                 Text("Contact Me")
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget sideMenu(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
          padding: EdgeInsets.all(deviceWidth / 100),
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "{_HT_}",
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child:
                      sideMenuIcons(Icons.home, iconSize, Colors.greenAccent)),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: sideMenuIcons(
                      Icons.person_outline, iconSize, Colors.white)),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: sideMenuIcons(
                      Icons.remove_red_eye, iconSize, Colors.white)),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: sideMenuIcons(
                      Icons.contact_mail, iconSize, Colors.white)),
              Spacer(),
            ],
          ),
        ))
      ],
    );
  }

  Widget myPic(BuildContext context) {
    return Positioned(
      top: 3,
      right: 3,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            border: Border.all(color: Colors.greenAccent, width: 3.0)),
        margin: EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500),
          child: Image(
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              image: AssetImage("assets/img/my_img.jpg")),
        ),
      ),
    );
  }

  Widget socialIcons(BuildContext context) {
    return Positioned(
      bottom: 2,
      right: 2,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                html.window.location.href = "https://twitter.com/voidnen";
              },
              child: Image(
                  width: deviceWidth / socialMediaIcons,
                  height: deviceWidth / socialMediaIcons,
                  image: AssetImage("assets/img/twitter.png")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                html.window.location.href =
                    "https://www.facebook.com/hasnen.tai";
              },
              child: Image(
                  width: deviceWidth / socialMediaIcons,
                  height: deviceWidth / socialMediaIcons,
                  image: AssetImage("assets/img/facebook.png")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                html.window.location.href =
                    "https://www.instagram.com/_void_nen_";
              },
              child: Image(
                  width: deviceWidth / socialMediaIcons,
                  height: deviceWidth / socialMediaIcons,
                  image: AssetImage("assets/img/insta.png")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                html.window.location.href =
                    "https://www.youtube.com/channel/UC85hhp-BJCsycB4Y6dwylHw";
              },
              child: Image(
                  fit: BoxFit.cover,
                  width: deviceWidth / socialMediaIcons,
                  height: deviceWidth / socialMediaIcons,
                  image: AssetImage("assets/img/youtube.png")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                html.window.location.href =
                    "https://in.linkedin.com/in/hasnen-tai-7b143b143";
              },
              child: Image(
                  fit: BoxFit.cover,
                  width: deviceWidth / socialMediaIcons,
                  height: deviceWidth / socialMediaIcons,
                  image: AssetImage("assets/img/linkedin.png")),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;

    setState(() {
      device = deviceFactory.device(deviceWidth);
      currentDeviceMap = device.getDevice();
      currentDevice = currentDeviceMap["device"];
      tileFontSize = currentDeviceMap["title_font_size"];
      subTitleFontSize = currentDeviceMap["sub_title_font_size"];
      iconSize = currentDeviceMap["icon_size"];
      socialMediaIcons = currentDeviceMap["social_media_icons_size"];
    });

    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              overflow: Overflow.clip,
              children: <Widget>[
                backgroundImage(context),
                myIntro(context),
                sideMenu(context),
                myPic(context),
                socialIcons(context)
              ],
            ),
          )
        ],
      ),
    );
  }
}
