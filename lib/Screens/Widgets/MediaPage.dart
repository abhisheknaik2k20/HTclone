import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hstclone/Screens/Widgets/widget_list.dart';

class MediaPage extends StatefulWidget {
  final double height;
  final double width;
  const MediaPage({
    required this.height,
    required this.width,
    super.key,
  });

  @override
  State<MediaPage> createState() => _MediaPage();
}

class _MediaPage extends State<MediaPage> {
  late ScrollController scrollController;
  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  void jumpfrwd(int flag) {
    scrollController.animateTo(scrollController.offset + 250 * flag,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height * 2.1 / 3,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/marvel.gif',
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: EdgeInsets.only(left: widget.width * 0.08),
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: widget.height * 0.1,
                      ),
                      SvgPicture.asset(
                        'assets/mcus.svg',
                        width: widget.width * 0.2,
                      ),
                      SizedBox(
                        height: widget.height * 0.01,
                      ),
                      Row(
                        children: [
                          const Text(
                            "2024  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            "●",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          const Text(
                            "  English  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            "●  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                              color: Colors.transparent.withOpacity(0.8),
                            ),
                            child: const Text(
                              "U/A 13+",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widget.height * 0.01,
                      ),
                      SizedBox(
                        width: widget.width * 0.25,
                        child: const Text(
                          "Explore the Marvel Cinematic Universe: a thrilling blend of heroes, villains, and cosmic drama. Stream now and witness the interconnected saga that redefines heroism.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: widget.height * 0.01,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: widget.height * 0.08,
                              width: widget.width * 0.2,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Text(
                                'Start Streaming',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: widget.width * 0.01,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              height: widget.height * 0.08,
                              width: widget.width * 0.05,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: widget.width * 0.3,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: widget.height * 0.3,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              jumpfrwd(-1);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: widget.height * 0.38,
                              width: widget.width * 0.02,
                              decoration: BoxDecoration(
                                color: Colors.transparent.withOpacity(0.4),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: widget.height * 0.4,
                            width: widget.width * 0.3,
                            child: CustomScrollView(
                              controller: scrollController,
                              scrollDirection: Axis.horizontal,
                              slivers: [
                                for (var sliverWidget in sliverWidgets2)
                                  sliverWidget,
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              jumpfrwd(1);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: widget.height * 0.38,
                              width: widget.width * 0.02,
                              decoration: BoxDecoration(
                                color: Colors.transparent.withOpacity(0.4),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
