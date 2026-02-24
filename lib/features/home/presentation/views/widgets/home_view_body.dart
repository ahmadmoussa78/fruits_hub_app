import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/best_selling_grid_view.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/best_selling_header.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featuret_item_list_view.dart';

import '../../../../../core/widgets/search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 16),
              CustomHomeAppBar(),
              SizedBox(height: 16),
              SearchTextField(),
              SizedBox(height: 12),
              FeaturetItemListView(),
              SizedBox(height: 24),
              BestSellingHeader(),
              SizedBox(height: 8),
            ],
          ),
        ),
        BestSellingGridView(),
      ],
    );
  }
}
