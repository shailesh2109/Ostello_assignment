import 'package:courses/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class InsideSearchBar extends StatefulWidget {
  const InsideSearchBar({super.key});

  @override
  State<InsideSearchBar> createState() => _InsideSearchBarState();
}

class _InsideSearchBarState extends State<InsideSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: 
          
          Theme(data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: MyTheme.purple)),
            child: TextFormField(
              
                decoration: 
                InputDecoration(border: OutlineInputBorder(),
                
                suffixIcon: Icon(CupertinoIcons.search),
                hintText: "Search for UPSC Coaching"),  
              ),
          )
        );
  }
}