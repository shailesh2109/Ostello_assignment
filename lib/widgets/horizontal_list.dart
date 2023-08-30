import 'package:courses/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() => runApp(const HorizontalList());

class HorizontalList extends StatefulWidget {
  const HorizontalList({super.key});

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  String dropdownValue = 'Sort';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: MyTheme.purple),
              ),
              child:
                  "Filters".text.color(MyTheme.purple).xl.make().px12().py2()),
          SizedBox(
            width: 15,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: MyTheme.purple),
            ),
            child: DropdownButton<String>(
              value: dropdownValue,
              items: <String>['Sort','Relevance', 'Distance', 'Price', 'Rating']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: value.text.color(MyTheme.purple).xl.make().px12().py2());
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
          ).w40(context),
          SizedBox(
            width: 15,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: MyTheme.purple),
              ),
              child: "<2Km".text.color(MyTheme.purple).xl.make().px12().py2()),
          SizedBox(
            width: 15,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: MyTheme.purple),
              ),
              child: "JEE".text.color(MyTheme.purple).xl.make().px12().py2()),
          SizedBox(
            width: 15,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: MyTheme.purple),
              ),
              child:
                  "Course".text.color(MyTheme.purple).xl.make().px12().py2()),
        ],
      ),
    );
  }
}
