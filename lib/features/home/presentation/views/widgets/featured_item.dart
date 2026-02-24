import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_featured_button.dart';
import 'package:svg_flutter/svg_flutter.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});
  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width - 32;
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: itemWidth * .4,
                child: SvgPicture.asset(
                  Assets.assetsImagesPageViewItem2Image,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: itemWidth * .5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: const DecorationImage(
                    image: svg.Svg(Assets.assetsImagesFeaturedItemBackground),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        'عروض العيد',
                        style: TextStyles.regular13.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                right: 30,
                top: 70,
                child: Text(
                  'خصم 25%',
                  style: TextStyles.bold19.copyWith(
                    color: Colors.white,
                  ), // Adjust the text styles
                ),
              ),
              const SizedBox(height: 11),
              Positioned(
                right: 30,
                bottom: 20,
                child: CustomFeaturedButton(onPressed: () {}),
              ),
              const SizedBox(height: 29),
            ],
          ),
        ),
      ),
    );
  }
}
