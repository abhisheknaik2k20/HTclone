import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubscribePage extends StatefulWidget {
  const SubscribePage({super.key});

  @override
  State<SubscribePage> createState() => _SubscribePage();
}

class _SubscribePage extends State<SubscribePage> {
  int selectedindex = 1;
  int planindex = 1;

  List<List<String>> footerInfo = [
    [
      'Company',
      'About Us',
      '',
    ],
    [
      'View Website in',
      'English',
      'Others',
    ],
    [
      'Need Help ?',
      'Visit Help',
      'Share Feedback',
    ]
  ];
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 1.0,
    );
    _startAutoScroll();
    super.initState();
  }

  void _startAutoScroll() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        if (_pageController.hasClients) {
          _pageController.animateToPage(
            (_pageController.page!.toInt() + 1) % 12,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );

          _startAutoScroll();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt();
    int height = MediaQuery.of(context).size.height.toInt();
    TextStyle textStyle1 = TextStyle(
      color: Colors.white,
      fontSize: height * 0.03,
    );
    TextStyle textStyle3 = TextStyle(
      color: Colors.white,
      fontSize: height * 0.035,
      fontWeight: FontWeight.bold,
    );
    TextStyle textStyle2 = TextStyle(
      color: Colors.grey,
      fontSize: height * 0.02,
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 2, 14),
      appBar: builtAppbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width * 0.4,
                  height: height * 1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(width * 0.5),
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: PageView.builder(
                          scrollDirection: Axis.vertical,
                          controller: _pageController,
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return _buildPage(index, height);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.05,
                          top: height * 0.1,
                        ),
                        child: Text(
                          'Subscribe now and start streaming',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade200,
                            fontSize: height * 0.05,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: width * 0.2,
                          height: height * 0.75,
                          padding: EdgeInsets.only(
                            top: height * 0.13,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'All content',
                                style: textStyle1,
                              ),
                              Text(
                                'Movies, Sports, Live TV,',
                                style: textStyle2,
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Text(
                                'Watch on TV or Laptop',
                                style: textStyle1,
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Text(
                                'Ads free',
                                style: textStyle1,
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Text(
                                'Number of Devices',
                                style: textStyle1,
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Text(
                                'Max video quality',
                                style: textStyle1,
                              ),
                              Text(
                                'Atmos on selected titles only',
                                style: textStyle2,
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Text(
                                'Max video quality',
                                style: textStyle1,
                              ),
                              Text(
                                'Atmos on selected titles only',
                                style: textStyle2,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.05),
                          child: Container(
                            width: width * 0.3,
                            height: height * 0.75,
                            child: TableMenu(
                                context, width * 0.3333333333, height * 0.75),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: height * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
                            height: height * 0.075,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              color: Colors.grey.shade600.withOpacity(0.4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedindex = 1;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Quarterly',
                                        style: textStyle3,
                                      ),
                                      SizedBox(
                                        width: width * 0.001,
                                      ),
                                      selectedindex == 1
                                          ? Container(
                                              padding: EdgeInsets.all(
                                                width * 0.001,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(40),
                                                ),
                                                color: Color.fromARGB(
                                                    255, 13, 111, 192),
                                              ),
                                              child: Icon(
                                                Icons.check,
                                                color: Colors.white,
                                              ),
                                            )
                                          : Container()
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedindex = 2;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        'Yearly',
                                        style: textStyle3,
                                      ),
                                      SizedBox(
                                        width: width * 0.001,
                                      ),
                                      selectedindex == 2
                                          ? Container(
                                              padding: EdgeInsets.all(
                                                width * 0.001,
                                              ),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(40),
                                                ),
                                                color: Color.fromARGB(
                                                    255, 13, 111, 192),
                                              ),
                                              child: Icon(
                                                Icons.check,
                                                color: Colors.white,
                                              ),
                                            )
                                          : Container()
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedindex = 3;
                                      planindex = 3;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        'Monthly',
                                        style: textStyle3,
                                      ),
                                      SizedBox(
                                        width: width * 0.001,
                                      ),
                                      selectedindex == 3
                                          ? Container(
                                              padding: EdgeInsets.all(
                                                width * 0.001,
                                              ),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(40),
                                                ),
                                                color: Color.fromARGB(
                                                    255, 13, 111, 192),
                                              ),
                                              child: const Icon(
                                                Icons.check,
                                                color: Colors.white,
                                              ),
                                            )
                                          : Container()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (selectedindex != 3) {
                                        setState(() {
                                          planindex = 1;
                                        });
                                      }
                                    },
                                    child: selectedindex == 1
                                        ? buildContainer(
                                            height,
                                            width,
                                            'Mobile',
                                            '149',
                                            '/3Months',
                                          )
                                        : selectedindex == 2
                                            ? buildContainer(
                                                height,
                                                width,
                                                'Mobile',
                                                '499',
                                                '/Year',
                                              )
                                            : buildContainer(
                                                height,
                                                width,
                                                'Mobile',
                                                'NA',
                                                '',
                                              ),
                                  ),
                                  planindex == 1
                                      ? Container(
                                          padding: EdgeInsets.all(
                                            width * 0.002,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(40),
                                            ),
                                            color: Color.fromARGB(
                                                255, 13, 111, 192),
                                          ),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        )
                                      : Container()
                                ],
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (selectedindex != 3) {
                                        setState(() {
                                          planindex = 2;
                                        });
                                      }
                                    },
                                    child: selectedindex == 1
                                        ? buildContainer(
                                            height,
                                            width,
                                            'Super',
                                            '149',
                                            '/3Months',
                                          )
                                        : selectedindex == 2
                                            ? buildContainer(
                                                height,
                                                width,
                                                'Super',
                                                '899',
                                                '/Year',
                                              )
                                            : buildContainer(
                                                height,
                                                width,
                                                'Super',
                                                'NA',
                                                '',
                                              ),
                                  ),
                                  planindex == 2
                                      ? Container(
                                          padding: EdgeInsets.all(
                                            width * 0.002,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(40),
                                            ),
                                            color: Color.fromARGB(
                                                255, 13, 111, 192),
                                          ),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        )
                                      : Container()
                                ],
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        planindex = 3;
                                      });
                                    },
                                    child: selectedindex == 1
                                        ? buildContainer(
                                            height,
                                            width,
                                            'Premium',
                                            '349',
                                            '/3Months',
                                          )
                                        : selectedindex == 2
                                            ? buildContainer(
                                                height,
                                                width,
                                                'Premium',
                                                '1499',
                                                '/Year',
                                              )
                                            : buildContainer(
                                                height,
                                                width,
                                                'Premium',
                                                '299',
                                                '/Month',
                                              ),
                                  ),
                                  planindex == 3
                                      ? Container(
                                          padding: EdgeInsets.all(
                                            width * 0.002,
                                          ),
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(40),
                                            ),
                                            color: Color.fromARGB(
                                                255, 13, 111, 192),
                                          ),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        )
                                      : Container()
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
                            height: height * 0.08,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 25, 64, 255),
                                  Color.fromARGB(255, 31, 22, 204),
                                  Color.fromARGB(255, 27, 19, 176),
                                ],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: width * 0.15,
                                ),
                                Text(
                                  'Continue with Mobile >',
                                  style: TextStyle(
                                    fontSize: height * 0.035,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.15,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Footer(height, width),
          ],
        ),
      ),
    );
  }

  Container buildContainer(
      int height, int width, String text1, String text2, String text3) {
    return Container(
      padding: EdgeInsets.all(width * 0.01),
      height: height * 0.14,
      width: width / 6.5,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
              color: Colors.amber.shade300,
              fontSize: height * 0.03,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                text2,
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: height * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    text3,
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar builtAppbar(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.all(width * 0.01),
        child: Image.asset(
          'assets/logo.png',
          color: Colors.white,
        ),
      ),
      leadingWidth: width * 0.15,
      backgroundColor: Colors.transparent,
      toolbarHeight: height * 0.125,
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: width * 0.01,
            top: height * 0.01,
            bottom: height * 0.01,
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all<Size>(
                Size(
                  width * 0.1,
                  height * 0.08,
                ),
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Colors.grey.shade900,
              ),
            ),
            onPressed: () {},
            child: Text(
              'English',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: height * 0.03,
                  color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: width * 0.05,
            top: height * 0.01,
            bottom: height * 0.01,
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 25, 64, 255),
                  Color.fromARGB(255, 31, 22, 204),
                  Color.fromARGB(255, 27, 19, 176),
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.transparent,
                ),
                fixedSize: MaterialStateProperty.all<Size>(
                  Size(
                    width * 0.1,
                    height * 0.08,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: height * 0.03,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget TableMenu(BuildContext context, double width, double height) {
    TextStyle textStyle1 = TextStyle(
      color: Colors.grey.shade300,
      fontSize: height * 0.04,
    );
    TextStyle textStyle2 = TextStyle(
      color: Colors.grey.shade500,
      fontSize: height * 0.04,
    );
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: (selectedindex == 1 && planindex == 1) ||
                      (selectedindex == 2 && planindex == 1)
                  ? LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(124, 97, 97, 97),
                        Color.fromARGB(88, 158, 158, 158),
                        Color.fromARGB(67, 224, 224, 224),
                      ],
                    )
                  : null),
          width: width * 0.3,
          height: height,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.08,
                ),
                child: Text(
                  'Mobile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber.shade400,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Icon(
                Icons.check,
                color: Colors.grey.shade300,
                size: width * 0.07,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Icon(
                Icons.close,
                color: Colors.grey.shade300,
                size: width * 0.07,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Icon(
                Icons.close,
                color: Colors.grey.shade300,
                size: width * 0.07,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                '1',
                style: textStyle1,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                'HD',
                style: textStyle1,
              ),
              Text(
                '720',
                style: textStyle1,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                'Stereo',
                style: textStyle1,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: (selectedindex == 1 && planindex == 2) ||
                      (selectedindex == 2 && planindex == 2)
                  ? LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(124, 97, 97, 97),
                        Color.fromARGB(88, 158, 158, 158),
                        Color.fromARGB(67, 224, 224, 224),
                      ],
                    )
                  : null),
          width: width * 0.3,
          height: height,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.08,
                ),
                child: Text(
                  'Super',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber.shade400,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Icon(
                Icons.check,
                color: Colors.grey.shade500,
                size: width * 0.07,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Icon(
                Icons.check,
                color: Colors.grey.shade500,
                size: width * 0.07,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Icon(
                Icons.close,
                color: Colors.grey.shade500,
                size: width * 0.07,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                '2',
                style: textStyle2,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                'FULL HD',
                style: textStyle2,
              ),
              Text(
                '1080',
                style: textStyle2,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                'Dolby Atmos',
                style: textStyle2,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: (selectedindex == 1 && planindex == 3) ||
                      (selectedindex == 2 && planindex == 3) ||
                      selectedindex == 3
                  ? LinearGradient(
                      begin: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(124, 97, 97, 97),
                        Color.fromARGB(88, 158, 158, 158),
                        Color.fromARGB(67, 224, 224, 224),
                      ],
                    )
                  : null),
          height: height,
          width: width * 0.3,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.08,
                ),
                child: Text(
                  'Premium',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber.shade400,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Icon(
                Icons.check,
                color: Colors.grey.shade500,
                size: width * 0.07,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Icon(
                Icons.check,
                color: Colors.grey.shade500,
                size: width * 0.07,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Icon(
                Icons.check,
                color: Colors.grey.shade500,
                size: width * 0.07,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                '4',
                style: textStyle2,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                '4K',
                style: textStyle2,
              ),
              Text(
                '2160',
                style: textStyle2,
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Text(
                'Dolby Atmos',
                style: textStyle2,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPage(int index, int height) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new ExactAssetImage('assets/scrollimages/$index.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: new BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
        child: new Container(
          decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
        ),
      ),
    );
  }

  Widget Footer(int height, int width) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (var items in footerInfo)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    items[0],
                    style: TextStyle(
                      fontSize: height * 0.03,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    items[1],
                    style: TextStyle(
                      fontSize: height * 0.02,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    items[2],
                    style: TextStyle(
                      fontSize: height * 0.02,
                      color: Colors.grey.shade500,
                    ),
                  )
                ],
              ),
            Column(
              children: [
                Text(
                  'Contact Us on',
                  style: TextStyle(
                    fontSize: height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      FontAwesomeIcons.facebook,
                      size: width * 0.025,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Icon(
                      FontAwesomeIcons.linkedin,
                      size: width * 0.025,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  FontAwesomeIcons.googlePlay,
                  color: Colors.white,
                  size: width * 0.025,
                ),
                SizedBox(
                  width: width * 0.1,
                )
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  FontAwesomeIcons.appStore,
                  color: Colors.white,
                  size: width * 0.025,
                ),
                SizedBox(
                  width: width * 0.1,
                )
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
          ],
        )
      ],
    );
  }
}
