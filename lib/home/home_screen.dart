import 'package:flutter/material.dart';
import 'package:islame/home/hadeth/hadeth_tab.dart';
import 'package:islame/home/quran/quran_tab.dart';
import 'package:islame/home/radio/radio_tab.dart';
import 'package:islame/home/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const routName = 'home_screen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> ScreensTap = [QuranTap(), HadethTap(), SebhaTap(), RadioTap()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/image/main_back.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Islami"),
        ),
        body: ScreensTap[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/image/ic_quran.png")),
                label: "quran"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/image/ic_hadeth.png")),
                label: "hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/image/ic_sebha.png")),
                label: "sebha"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/image/ic_radio.png")),
                label: "radio"),
          ],
        ),
      ),
    );
  }
}
