import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        onPageChanged: (value) {},
        controller: pageController,
        children: [
          PageViewItem(
            isVisible:
                (pageController.hasClients
                    ? pageController.page!.round()
                    : 0) !=
                0,
            image: Assets.assetsImagesPageViewItem1Image,
            backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("مرحبًا بك في"), Text("Fruit"), Text("HUB")],
            ),
          ),
          PageViewItem(
            isVisible:
                (pageController.hasClients
                    ? pageController.page!.round()
                    : 0) !=
                0,
            image: Assets.assetsImagesPageViewItem2Image,
            backgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
            subtitle:
                "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("ابحث وتسوق")],
            ),
          ),
        ],
      ),
    );
  }
}
