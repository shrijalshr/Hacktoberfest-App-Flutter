// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Tile extends StatelessWidget {
  final String name;
  const Tile({required this.name});

  void launcher() async {
    final String _url = "https://github.com/" + name;
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 5, right: 5),
      child: InkWell(
        onTap: launcher,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          color: Color(0xFFF2E88B),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Image.asset(
                  'images/githubnrb.png',
                  scale: 5,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Satisfy',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
