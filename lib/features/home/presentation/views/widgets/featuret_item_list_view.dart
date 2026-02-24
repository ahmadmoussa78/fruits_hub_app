import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featured_item.dart';

class FeaturetItemListView extends StatelessWidget {
  const FeaturetItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return const FeaturedItem();
        }),
      ),
    );
  }
}
