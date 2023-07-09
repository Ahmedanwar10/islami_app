import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadeath_data.dart';
import 'hadeth_details.dart';
import 'hadeth_title.dart';

class HadethTap extends StatelessWidget {
  List<HadeathData> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    LoadHadethFile();
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/image/hadeth_image.png'),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadethDetails.routeName,
                          arguments: allHadeth[index]);
                    },
                    child: HadethTitleWidget(
                      allHadeth[index].title,
                    )),
                separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 1.2,
                      ),
                    ),
                itemCount: allHadeth.length),
          ),
        ],
      ),
    );
  }

  void LoadHadethFile() async {
    List<HadeathData> list = [];
    String content = await rootBundle.loadString("assets/files/ahadeth .txt");
    List<String> allHadeathContant = content.split("#");
    for (int i = 0; i < allHadeathContant.length; i++) {
      List<String> SingleHadeathLines = allHadeathContant[i].trim().split('\n');
      String title = SingleHadeathLines[0];
      SingleHadeathLines.removeAt(0);
      String content = SingleHadeathLines.join('\n');
      HadeathData hadeath = HadeathData(title, content);
      list.add(hadeath);
    }
    allHadeth = list;
  }
}
