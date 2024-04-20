import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hstclone/Screens/Widgets/AdsScreen.dart';
import 'package:hstclone/Screens/Widgets/MediaPage.dart';
import 'package:hstclone/Screens/Widgets/SideBar.dart';
import 'package:hstclone/Screens/Widgets/widget_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 8, 50),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: height * 1.7,
                collapsedHeight: height * 0.1,
                backgroundColor: Colors.grey.shade700,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    alignment: Alignment.center,
                    color: Color.fromARGB(255, 27, 37, 45),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 0.05 * width,
                              ),
                              child: AdScreen(height: height, width: width),
                            ),
                            MediaPage(height: height, width: width)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 20.0,
                    left: 0.05 * width,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "NAME",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: height * 0.3,
                        color: Colors.purple[300],
                        child: CustomScrollView(
                          scrollDirection: Axis.horizontal,
                          slivers: <Widget>[
                            for (var sliverWidget in sliverWidgets)
                              sliverWidget,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 20.0,
                    left: 0.05 * width,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "NAME",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: height * 0.3,
                        color: Colors.red,
                        child: CustomScrollView(
                          scrollDirection: Axis.horizontal,
                          slivers: <Widget>[
                            for (var sliverWidget in sliverWidgets)
                              sliverWidget,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 20.0,
                    left: 0.05 * width,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Container(
                    height: height * 0.3,
                    color: Colors.red,
                    child: CustomScrollView(
                      scrollDirection: Axis.horizontal,
                      slivers: <Widget>[
                        for (var sliverWidget in sliverWidgets) sliverWidget,
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 20.0,
                    left: 0.05 * width,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Container(
                    height: height * 0.3,
                    color: Colors.red,
                    child: CustomScrollView(
                      scrollDirection: Axis.horizontal,
                      slivers: <Widget>[
                        for (var sliverWidget in sliverWidgets) sliverWidget,
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SideBar(height: height, width: width)
        ],
      ),
    );
  }
}
