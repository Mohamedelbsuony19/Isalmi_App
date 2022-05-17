import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalmi_app/provaider/AppConfingProfaider.dart';
import 'package:provider/provider.dart';
class souraDetalisScreen extends StatefulWidget {
  static String ROUTE_NAME='souraDetalis';

  @override
  State<souraDetalisScreen> createState() => souraDetalisScreenState();
}

class souraDetalisScreenState extends State<souraDetalisScreen> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
  var arg =ModalRoute.of(context)?.settings.arguments as souradetalisArgs;
  var provaidr=Provider.of<AppProvaiderConfing>(context);

  if(verses.isEmpty)
  loadFails(arg.Index);
    return Stack(
      children: [
        provaidr.isDarkMode()?
        Image.asset('assets/images/darkMainBackground.png',
        width: double.infinity,
        height: double.infinity,
          fit: BoxFit.fill,
        )
            :
        Image.asset('assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
        centerTitle: true,
        title: Text(arg.name,
        style: Theme.of(context).textTheme.headline1,
          ),
        ),
          body: verses.length==0?
              Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,))
          :
          ListView.separated(
            separatorBuilder: (context,index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 100),
                height: 1,
                color: Theme.of(context).primaryColor,
              );
            },
            itemBuilder: (context,index){
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(verses[index],style: Theme.of(context).textTheme.subtitle1, textAlign: TextAlign.center,),
              ),
            );
          },
          itemCount: verses.length,
          ),
        )]
    );
  }

  void loadFails(int index)async{
   String content=await rootBundle.loadString('assets/files_quraan/${index+1}.txt');
   List<String>lins =content.split('\n');
   verses =lins;
   setState(() {

   });
}
}

class souradetalisArgs{
  String name;
  int Index;
  souradetalisArgs(this.name,this.Index);
}
