import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdScreen extends StatefulWidget {
  final double height;
  final double width;
  const AdScreen({required this.height, required this.width, super.key});

  @override
  State<AdScreen> createState() => _AdScreenState();
}

class _AdScreenState extends State<AdScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height * 1 / 2.5,
      color: const Color.fromARGB(255, 121, 43, 3),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            child: Image.asset(
              'assets/bannerad.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            width: widget.width * 0.01,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: widget.height * 0.02,
                ),
                const Text(
                  "This is a Sample Ad",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: const Text(
                        'AD',
                      ),
                    ),
                    const Text(
                      "  This is info about us",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: widget.height * 0.02,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.amber.shade700,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Click Here to learn more',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
