import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ewan/core/core.dart';
import 'package:ewan/features/home/data/data.dart';
import 'package:ewan/features/home/presentation/widgets/contant_page_details.dart';
import 'package:ewan/features/home/presentation/widgets/image_appbar_detail.dart';

@RoutePage()
class MyPropertyDetailScreen extends StatelessWidget {
  const MyPropertyDetailScreen({super.key, required this.property});

  final PropertiesModel property;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ImageAppbarDetails(property: property, showFavorite: false),
          ContantPageDetails(property: property),
        ],
      ),
    );
  }
}
