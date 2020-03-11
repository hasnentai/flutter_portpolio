import 'dart:ui';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';
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
  PageController pageController;

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
                 Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.greenAccent,width: 2.0),
                     borderRadius: BorderRadius.circular(5.0)
                   ),
                   margin: EdgeInsets.only(top:10.0),
                   padding: EdgeInsets.symmetric(horizontal: deviceWidth/50,vertical: deviceWidth/60),
                   child: Text("Contact Me",style: TextStyle(color: Colors.greenAccent),))
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "{_HT_}",
                style: TextStyle(color: Colors.white),
              ),
             
              Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:
                        sideMenuIcons(FeatherIcons.home, iconSize, Colors.greenAccent)),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: sideMenuIcons(
                        FeatherIcons.user, iconSize, Colors.white)),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: sideMenuIcons(
                        FeatherIcons.eye, iconSize, Colors.white)),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: sideMenuIcons(
                        FeatherIcons.mail, iconSize, Colors.white)),
                  ],
                ),
              ),
            
             
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
            border: Border.all(color: Colors.redAccent, width: 3.0)),
        margin: EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500),
          child: Image(
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              image: AssetImage("img/IMG_7869.JPG")),
        ),
      ),
    );
  }

  Widget socialIcons(BuildContext context) {
    return  Positioned(
      bottom: 0,
      right: 0,
          child: Row(
                  children: <Widget>[
                     IconButton(
                      onPressed: (){
                        
                      },
                      icon: Icon(FeatherIcons.youtube,size: iconSize-10,)),
                    IconButton(
                      onPressed: (){

                      },
                      icon: Icon(FeatherIcons.twitter,size: iconSize-10)),
                       IconButton(
                      onPressed: (){
                        
                      },
                      icon: Icon(FeatherIcons.linkedin,size: iconSize-10)),
                       IconButton(
                      onPressed: (){
                        
                      },
                      icon: Icon(FeatherIcons.instagram,size: iconSize-10)),
                       IconButton(
                      onPressed: (){
                        
                      },
                      icon: Icon(FeatherIcons.facebook,size: iconSize-10))
                  ],
                ),
    );
  }

  Widget homePage(BuildContext context){
    return Row(
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
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          homePage(context),
          homePage(context),
        ],
      )
    );
  }
}
