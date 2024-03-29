import 'package:flutter/material.dart';

import '../module/cataloge.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} pressed");
        },
        leading: Image.network(item.image,errorBuilder: (context, error, stackTrace) {
          return const CircleAvatar();
        },),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style:const TextStyle(color: Colors.lightGreen, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
