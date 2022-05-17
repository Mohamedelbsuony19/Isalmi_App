import 'package:flutter/material.dart';
import 'package:isalmi_app/hadeth/hadeth_tab.dart';
import 'package:isalmi_app/provaider/AppConfingProfaider.dart';
import 'package:provider/provider.dart';

class hadethDeatils extends StatelessWidget {
  static String route_name = 'hadethDeatils';
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as hadethItem;
  var pro =Provider.of<AppProvaiderConfing>(context);
    return Stack(
      children: [
        pro.isDarkMode()?
        Image.asset(
          'assets/images/darkMainBackground.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ):
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              arg.title,

              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: Container(
            margin: EdgeInsets.all(40),
            child: SingleChildScrollView(
              child: Text(
                arg.content,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        )
      ],
    );
  }
}
