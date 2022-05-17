import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalmi_app/hadeth/hadeth_names.dart';
import 'package:isalmi_app/provaider/AppConfingProfaider.dart';
import 'package:provider/provider.dart';

class hadethTab extends StatefulWidget {

  @override
  State<hadethTab> createState() => hadethTabState();
}

class hadethTabState extends State<hadethTab> {
  @override
  Widget build(BuildContext context) {
    var provaidr=Provider.of<AppProvaiderConfing>(context);

    if(allHadethItem.isEmpty)
    loadFailHadith();
    return Stack(
      children: [
        provaidr.isDarkMode()?
        Image.asset('assets/images/darkMainBackground.png',
        width: double.infinity,
        height: double.infinity,
          fit: BoxFit.fill,
        ):
        Image.asset('assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          body: Column(
            children: [
              Center(
                child:
                Image.asset('assets/images/hadeth_image.png')
                ,),
              Expanded(
                  child:ListView.separated(
                      itemBuilder: (context,index){
                        return allHadethItem.isEmpty?
                            Center(child: CircularProgressIndicator(
                              color: Theme.of(context).primaryColor,
                            ),
                            )
                            :hadethNames(allHadethItem[index]);
                      },
                      separatorBuilder: (context,index){
                              return Container(
                                height: 1,
                                color: Theme.of(context).primaryColor,
                              );
                      },
                      itemCount: allHadethItem.length
                  )
              )
            ],
          ),
        )
      ],
    );
  }

  List<hadethItem>allHadethItem=[];

  void loadFailHadith()async{
    List<hadethItem>allHadethData=[];
  String fileHadeth=await rootBundle.loadString('assets/faills_hadeth/ahadeth .txt');
  List<String>allhadeth= fileHadeth.split('#\r\n');//
  for(int i =0;i< allhadeth.length; i++){
  List<String>singleHadeath= allhadeth[i].split('\n');  //تقسيم الحديث الواحد لسطور
  String title= singleHadeath[0];
  String content='';
  for(int j=1;j<singleHadeath.length;j++){
      content+= singleHadeath[j];
         }
  hadethItem item=hadethItem(content, title);
  allHadethData.add(item);
     }
  allHadethItem=allHadethData;
  setState(() {

  });
  }
}
class hadethItem{
  String title;
  String content;
  hadethItem(this.content,this.title);
}
