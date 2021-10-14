// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hacktoberfest_app/Screens/tile.dart';

import '../contributors.dart';

class ListContributors extends StatelessWidget {
  static const id = 'list';
  final List<String> contributersList = Contributers().getList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2E88B),
        leading: IconButton(
          icon: const Icon(Icons.delete, color: Color(0xFFF2E88B)),
          onPressed: () {},
        ),
        title: const Text(
          'Contributers',
          style: TextStyle(color: Color(0xFF212121), fontWeight: FontWeight.bold, fontFamily: 'Satisfy', fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contributersList.length,
        itemBuilder: (context, index) => Tile(name: contributersList[index]),
      ),
    );
  }
}
