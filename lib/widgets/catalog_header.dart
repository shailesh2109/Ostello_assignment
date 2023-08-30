import 'package:courses/widgets/horizontal_list.dart';
import 'package:courses/widgets/search_bar.dart';
import 'package:courses/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatefulWidget {
  const CatalogHeader({super.key});

  @override
  State<CatalogHeader> createState() => _CatalogHeaderState();
}

class _CatalogHeaderState extends State<CatalogHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InsideSearchBar(),
        HorizontalList(),
      ],
    );
  }
}