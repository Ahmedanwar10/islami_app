import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame/home/quran/sura_detials_arguments.dart';
import 'package:islame/home/quran/verses_widget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArguments argu =
        (ModalRoute.of(context)?.settings.arguments) as SuraArguments;

    if (verses.isEmpty) ReadFiles(argu.index + 1);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/main_back.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Islami",
          ),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      VersesWidget(verses[index], index + 1),
                  itemCount: verses.length,
                ),
              ),
      ),
    );
  }

  void ReadFiles(int fileIndex) async {
    String fileContect =
        await rootBundle.loadString("assets/files/${fileIndex}.txt");
    List<String> Lines = fileContect.trim().split("/n");

    setState(() {
      verses = Lines;
    });
  }
}
