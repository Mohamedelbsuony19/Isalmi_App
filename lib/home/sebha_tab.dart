import 'package:flutter/material.dart';
import 'package:isalmi_app/provaider/AppConfingProfaider.dart';
import 'package:isalmi_app/utils/language/languages.dart';
import 'package:isalmi_app/utils/language/localizations_delegate.dart';
import 'package:isalmi_app/utils/settings_model.dart';
import 'package:provider/provider.dart';

class sebhaTab extends StatefulWidget {
  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int countr=0;
  List<String>tasbehList=['سبحان الله','الحمدلله','لا اله الا الله','الله اكبر','لا حول ولا قوه الا بالله','اللهم صلي علي محمد'];
  int index=0;
  double angle=0;
  Languages? _localization =
  AppLocalizationsDelegate.instance(PrefSettingsModel.currentLocale);
  @override
  Widget build(BuildContext context) {
    var provaidr=Provider.of<AppProvaiderConfing>(context);
    var _languageValue = EnumLanguage.ENGLISH;
     Provider.of<PrefSettingsModel>(context, listen: false)
         .applyLocale(_languageValue!, notify: true);
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
             Stack(
               alignment: AlignmentDirectional.topCenter,
               children: [
                 Image.asset('assets/images/head_sebha.png'),
                 InkWell(
                   onTap: (){
                        onTsbehClock();
                   },
                   child: Container(
                       margin: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.09),
                       child: Transform.rotate(
                           angle:angle ,
                           child: Image.asset('assets/images/body_sebha.png'))),
                 )
               ],
             ),
            SizedBox(height: 10,),
            Text(_localization!.search,style: Theme.of(context).textTheme.subtitle1,),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color:provaidr.isDarkMode()? Color(0xFF151B31):Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(25)
                ),
              child:
              Text('$countr',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color:provaidr.isDarkMode()? Colors.white:Colors.black
              ),),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
              decoration: BoxDecoration(
                color:provaidr.isDarkMode()? Color(0xFFFACC1D):Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Text('${tasbehList[index]}',style:TextStyle(
                fontSize: 25,
                color:provaidr.isDarkMode()? Colors.black:Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }

  void onTsbehClock(){
countr++;

if(countr %33==0) {index++;}

if(countr % 165==0){
index=0;
}
setState(() {
angle+=20;
});
}
}
