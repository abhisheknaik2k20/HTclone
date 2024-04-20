import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hstclone/Screens/Subpage.dart';

class SideBar extends StatefulWidget {
  final double height;
  final double width;
  const SideBar({required this.height, required this.width, Key? key})
      : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool sidebar = false;
  List<bool> isHovered = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  void _onHover(int index, bool isHovering) {
    setState(() {
      isHovered[index] = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          sidebar = true;
        });
      },
      onExit: (event) {
        setState(() {
          sidebar = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        height: widget.height,
        width: sidebar ? widget.width * 0.1 : widget.width * 0.05,
        decoration: BoxDecoration(
          color: sidebar
              ? Colors.transparent.withOpacity(0.7)
              : Colors.transparent.withOpacity(0.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: widget.height * 0.03,
            ),
            Image.asset(
              'assets/logo.png',
              color: Colors.white,
              width: widget.width * 0.045,
            ),
            _buildIconButton(
                icon: Icons.account_circle_rounded,
                iconSize: widget.width * 0.015,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SubscribePage();
                      },
                    ),
                  );
                },
                index: 0,
                text: 'Account'),
            _buildIconButton(
              icon: Icons.search,
              iconSize: widget.width * 0.015,
              onPressed: () {},
              index: 1,
              text: 'Search',
            ),
            _buildIconButton(
              icon: Icons.home,
              iconSize: widget.width * 0.015,
              onPressed: () {},
              index: 2,
              text: 'Home',
            ),
            _buildIconButton(
                icon: Icons.tv,
                iconSize: widget.width * 0.015,
                onPressed: () {},
                index: 3,
                text: 'TV'),
            _buildIconButton(
              icon: Icons.movie,
              iconSize: widget.width * 0.015,
              onPressed: () {},
              index: 4,
              text: 'Movie',
            ),
            _buildIconButton(
              icon: Icons.sports,
              iconSize: widget.width * 0.015,
              onPressed: () {},
              index: 5,
              text: 'Sports',
            ),
            _buildIconButton(
              icon: Icons.category,
              iconSize: widget.width * 0.015,
              onPressed: () {},
              index: 6,
              text: 'Category',
            ),
            SizedBox(
              height: widget.height * 0.1,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    required double iconSize,
    required VoidCallback onPressed,
    required int index,
    required String text,
  }) {
    return MouseRegion(
      onHover: (_) => _onHover(index, true),
      onExit: (_) => _onHover(index, false),
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: Colors.white,
              size:
                  isHovered[index] ? widget.width * 0.025 : widget.width * 0.02,
            ),
          ),
          sidebar
              ? Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              : Text('')
        ],
      ),
    );
  }
}
