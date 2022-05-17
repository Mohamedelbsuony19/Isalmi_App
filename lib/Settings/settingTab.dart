import 'package:flutter/material.dart';
import 'package:isalmi_app/Settings/themeBtnSheet.dart';
import 'package:isalmi_app/provaider/AppConfingProfaider.dart';
import 'package:provider/provider.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provaidr=Provider.of<AppProvaiderConfing>(context);
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 15,vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Theming',style: Theme.of(context).textTheme.headline1
         ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            ShowbtnSheet(context);
          },
          child: Container(
            padding: EdgeInsets.all(12),
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Theme.of(context).primaryColor)
            ) ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(provaidr.isDarkMode()?'Dark'
                  :'light'
                  ,
                style:Theme.of(context).textTheme.subtitle1,
                ),
                Icon(Icons.arrow_drop_down,color: Theme.of(context).primaryColor, )
              ],
            ),
          ),
        )
      ],
      ),
    );
  }
  void ShowbtnSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (buildContext){
return themeBtnSheet();
    });
}
}
