import 'package:flutter/material.dart';
import 'package:my_playing_ground/widgets/appbar_section.dart';
import 'package:my_playing_ground/widgets/grid_section_show.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF222831),
      body: Column(
        children: [
          AppBarSection(),
          GridSectionShow()
        ],
      ),
    );
  }
}








