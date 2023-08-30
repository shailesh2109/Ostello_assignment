import 'package:courses/models/catalog.dart';
import 'package:courses/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Image.asset(catalog.image).box.rounded.make().p(16),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                catalog.name.text.lg.extraBold.make(),
                Row(
                  children: [
                    Icon(CupertinoIcons.star_circle_fill,size: 16,)," ${catalog.rating} . ${catalog.distance} kms away".text.xs.make(),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color:MyTheme.purple),
                                  ),
                                  child: "PYHSICS".text.color(MyTheme.purple).xs.make().px12()
                                ),
                                 Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: MyTheme.purple),
                                  ),
                                  child: "MATHS".text.color(MyTheme.purple).xs.make().px12()
                                ).px4(),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color:MyTheme.purple),
                                  ),
                                  child: "CHEMISTRY".text.color(MyTheme.purple).xs.make().px12()
                                ),
                                 Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: MyTheme.purple),
                                  ),
                                  child: "JEE".text.color(MyTheme.purple).xs.make().px12()
                                ).px4(),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: MyTheme.purple
                                  ),
                                  child: "20% OFF".text.white.make().px12()
                                ).px4(),

              ],
            ),
          ))
        ],
      )
    ).color(MyTheme.lightPurple).rounded.square(180).make().py16();
  }
}