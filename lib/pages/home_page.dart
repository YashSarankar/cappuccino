import 'package:cappuccino/module/cataloge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
import 'dart:convert';
class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  void initState() {
    super.initState();
    localData();
  }

  localData()async{
   var catalogJson=await rootBundle.loadString("assets/files/Catalog.json");
   var decodeData= jsonDecode(catalogJson);
   var productData=decodeData["products"];
   CatalogModel.items=List.from(productData).map<Item>((item)=> Item.fromMap(item)).toList();
   setState(() {
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title:  const Text("Catalog App",style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: (CatalogModel.items!= null && CatalogModel.items.isNotEmpty)
        ?ListView.builder(
          itemCount:CatalogModel.items.length,
          itemBuilder: (BuildContext context, int index) => ItemWidget(item: CatalogModel.items[index],
          ),
        )
            :const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
      );
  }
}
