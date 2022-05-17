import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isalmi_app/provaider/AppConfingProfaider.dart';
import 'package:provider/provider.dart';

class themeBtnSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provaidr=Provider.of<AppProvaiderConfing>(context);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              provaidr.changeTheme(ThemeMode.dark);
            },
            child: provaidr.isDarkMode()?
            getSelectedWidget('Dark', context):
                getUnSelectedWidget('Dark', context)
          ),
          InkWell(
            onTap: (){
              provaidr.changeTheme(ThemeMode.light);
            },
            child: provaidr.isDarkMode()?
                getUnSelectedWidget('light', context):
            getSelectedWidget('light', context)
          ),
        ],
      ),
    );
  }
  Widget getSelectedWidget(String text,BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
            ),
          ),
          Icon(Icons.check,color: Theme.of(context).primaryColor,)
        ],
      ),
    );
  }
  Widget getUnSelectedWidget(String text,BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}
