import 'package:ewan/features/home/presentation/widgets/contant_page_details.dart';
import 'package:ewan/features/home/presentation/widgets/image_appbar_detail.dart';
import 'package:ewan/features/home/presentation/widgets/price_bar.dart';
import 'package:flutter/material.dart';
import 'package:ewan/features/home/data/models/models.dart';

class PropertyDetailPage extends StatelessWidget {
  final PropertiesModel property;

  const PropertyDetailPage({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ImageAppbarDetails(property: property),

          ContantPageDetails(property: property),
        ],
      ),

      bottomNavigationBar: PriceBar(property: property),
    );
  }
}
