import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isalmi_app/soura_detalis/soura_detalis.dart';
class sourNames extends StatelessWidget {
  String names;
  int index;
  sourNames(this.names,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator.of(context).pushNamed(souraDetalisScreen.ROUTE_NAME,
        arguments: souradetalisArgs(names, index)

        );

      },

      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(names,
      textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      ),
    );
  }
}
