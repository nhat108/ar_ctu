import 'dart:ui';

import 'package:ar_ctu/utils/app_colors.dart';
import 'package:ar_ctu/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlidePhoto extends StatefulWidget {
  const SlidePhoto({Key? key}) : super(key: key);

  @override
  _SlidePhotoState createState() => _SlidePhotoState();
}

class _SlidePhotoState extends State<SlidePhoto> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 180,
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(5, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: CacheImageNetworkWidget(
                      borderRadius: 30,
                      imageUrl:
                          'https://baocantho.com.vn/image/fckeditor/upload/2020/20200305/images/4-2.gif'),
                );
              }),
            ),
          ),
          Positioned.fill(
            bottom: 8,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ClipRect(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      height: 50,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              child: SmoothPageIndicator(
                                controller: _pageController,
                                count: 5,
                                effect: SlideEffect(
                                  activeDotColor: Colors.white,
                                  dotHeight: 10,
                                  dotWidth: 10,
                                  dotColor: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              width: 1.5,
                              height: 25,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.LightSkyBlue,
                              ),
                              child: Icon(
                                Icons.phone_android,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
          )
        ],
      ),
    );
  }
}
