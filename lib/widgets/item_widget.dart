import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

import "../models/products.dart";


class ItemWidget extends StatelessWidget {

  final Item item;
  const ItemWidget({super.key, required this.item});



  @override
  Widget build(BuildContext context) {
    return Card(
    child:ListTile(
      onTap: (){
        if (kDebugMode) {
          print("${item.name} pressed");
        }
      },
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text(item.price, style: TextStyle(color:Colors.deepPurple, fontWeight: FontWeight.bold, ),),
    )
    );

  }}