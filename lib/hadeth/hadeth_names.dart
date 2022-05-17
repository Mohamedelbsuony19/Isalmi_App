import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isalmi_app/hadeth/hadeth_deatils.dart';
import 'package:isalmi_app/hadeth/hadeth_tab.dart';
import 'package:isalmi_app/soura_detalis/soura_detalis.dart';
class hadethNames extends StatelessWidget {
hadethItem item;
  hadethNames(this.item);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator.of(context).pushNamed(hadethDeatils.route_name,
            arguments:item

        );

      },

      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text(item.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
