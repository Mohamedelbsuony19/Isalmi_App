import 'package:flutter/material.dart';
import 'package:isalmi_app/hadeth/hadeth_tab.dart';
import 'package:isalmi_app/Settings/settingTab.dart';
import 'package:isalmi_app/provaider/AppConfingProfaider.dart';
import 'package:isalmi_app/quraan/quraan_tab.dart';
import 'package:isalmi_app/home/radio_tab.dart';
import 'package:isalmi_app/home/sebha_tab.dart';
import 'package:isalmi_app/my_theme.dart';
import 'package:provider/provider.dart';


class homeScreen extends StatefulWidget {
  static String ROUTE_NAME='homeScreen';

  @override
  State<homeScreen> createState() => homeScreenState();
}

class homeScreenState extends State<homeScreen> {
  int carrint=0;

  @override
  Widget build(BuildContext context) {
    var provaidr=Provider.of<AppProvaiderConfing>(context);

    return Stack(
      children: [
        provaidr.isDarkMode() ?
    Image.asset(
      'assets/images/darkMainBackground.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    )
            :
        Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('islami',
            style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: tabs[carrint],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex:carrint ,
              onTap: (index){
                carrint=index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/icone_qaran.png')),
                label: 'quran'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/icone_hadeth.png')),
                label: 'hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/icine_sebha.png')),
                label:'sebha'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/images/icone_radio.png')),
                label: 'radio'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                label: 'Setting'),
              ],
            ),
          ),
        )
      ],
    );
  }
  List<Widget>tabs=[quraanTab(),hadethTab(),sebhaTab(),radioTab(),setting()];
}
