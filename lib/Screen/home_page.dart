import 'package:courses/widgets/catalog_header.dart';
import 'package:courses/widgets/catalog_list.dart';
import 'package:courses/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void closeAppUsingSystemPop() {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading:  Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: MyTheme.purple
          ),
          child: IconButton(
            padding: EdgeInsets.only(left: 5),
            iconSize: 15,
                onPressed: () {
                  closeAppUsingSystemPop();
                },
                icon: const Icon(Icons.arrow_back_ios)),
        ).p(10),
              title: Text(" For JEE-Mains",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m20,
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              CatalogList().expand()
            ],
          ),
        )
      )
      
      
      
    );
  }
}