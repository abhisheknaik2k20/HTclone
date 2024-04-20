import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<Widget> sliverWidgets = [
  SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.red.shade700,
        child: Center(
          child: Text('Sliver 1'),
        ),
      ),
    ),
  ),
  SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.blue,
        child: Center(
          child: Text('Sliver 2'),
        ),
      ),
    ),
  ),
  SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.green,
        child: Center(
          child: Text('Sliver 3'),
        ),
      ),
    ),
  ),
  SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.red.shade700,
        child: Center(
          child: Text('Sliver 1'),
        ),
      ),
    ),
  ),
  SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.blue,
        child: Center(
          child: Text('Sliver 2'),
        ),
      ),
    ),
  ),
  SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.green,
        child: Center(
          child: Text('Sliver 3'),
        ),
      ),
    ),
  ),
  SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.red.shade700,
        child: Center(
          child: Text('Sliver 1'),
        ),
      ),
    ),
  ),
  SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.blue,
        child: Center(
          child: Text('Sliver 2'),
        ),
      ),
    ),
  ),
  SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        color: Colors.green,
        child: Center(
          child: Text('Sliver 3'),
        ),
      ),
    ),
  ),
];

final List<Widget> sliverWidgets2 = [
  const SliverWidgetsForScroll(
    imageURL: 'assets/scrollimages/0.jpg',
  ),
  const SliverWidgetsForScroll(
    imageURL: 'assets/scrollimages/1.jpg',
  ),
  const SliverWidgetsForScroll(
    imageURL: 'assets/scrollimages/2.jpg',
  ),
  const SliverWidgetsForScroll(
    imageURL: 'assets/scrollimages/3.jpg',
  ),
  const SliverWidgetsForScroll(
    imageURL: 'assets/scrollimages/4.jpg',
  ),
  const SliverWidgetsForScroll(
    imageURL: 'assets/scrollimages/5.jpg',
  ),
  const SliverWidgetsForScroll(
    imageURL: 'assets/scrollimages/6.jpg',
  ),
  const SliverWidgetsForScroll(
    imageURL: 'assets/scrollimages/7.jpg',
  ),
];

class SliverWidgetsForScroll extends StatefulWidget {
  final String imageURL;
  const SliverWidgetsForScroll({required this.imageURL, super.key});

  @override
  State<SliverWidgetsForScroll> createState() => _SliverWidgetsForScroll();
}

class _SliverWidgetsForScroll extends State<SliverWidgetsForScroll> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: isHovering
            ? const EdgeInsets.only(top: 0, bottom: 0, left: 5)
            : const EdgeInsets.only(top: 8, bottom: 8, left: 5),
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHovering = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovering = false;
            });
          },
          child: Center(
            child: Image.asset(
              widget.imageURL,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
