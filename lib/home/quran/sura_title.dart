import 'package:flutter/material.dart';
import 'package:islame/home/quran/sura_details_screen.dart';
import 'package:islame/home/quran/sura_detials_arguments.dart';

class SuraTitle extends StatelessWidget {
  String title;
  int index;

  SuraTitle({super.key, required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraArguments(title: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
