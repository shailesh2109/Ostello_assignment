import 'dart:convert';


import 'package:courses/models/catalog.dart';
import 'package:courses/widgets/catalog_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatefulWidget {
  const CatalogList({super.key});

  @override
  State<CatalogList> createState() => _CatalogListState();
}

class _CatalogListState extends State<CatalogList> {
  @override
  void initState(){
    super.initState();
    loadData();
  }

  loadData()async{
    await Future.delayed(Duration(seconds: 2));
   final catalogJson=await rootBundle.loadString("assets/files/catalog.json");
   final decodeData= jsonDecode(catalogJson);
   var productData= decodeData["product"];
   CatalogModel.items=List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
   setState(() {});

  }


  @override
  Widget build(BuildContext context) {
    return (CatalogModel.items.isNotEmpty)?ListView.builder(
      itemCount: CatalogModel.items.length,
      itemBuilder: (context,index){
        final catalog=CatalogModel.items[index];
      return CatalogItem(catalog:catalog);
    }):
    Center(
      child: CircularProgressIndicator().centered().expand(),
    );
  }
}