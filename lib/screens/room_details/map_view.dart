import 'package:ar_ctu/utils/app_colors.dart';
import 'package:ar_ctu/utils/app_styles.dart';
import 'package:ar_ctu/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    CacheImageNetworkWidget(
                      width: 200,
                      height: 120,
                      borderRadius: 12,
                      imageUrl:
                          'https://s1.cdn.autoevolution.com/images/news/how-to-enable-the-new-full-dark-mode-in-google-maps-on-android-157243-7.jpg',
                    ),
                    Positioned.fill(
                      bottom: 10,
                      left: 10,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "16.25",
                                    style: AppStyles.textSizeCustom(
                                      size: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    "km",
                                    style: AppStyles.textSizeCustom(
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.CarnationPink,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "From your location",
                                style: AppStyles.textSizeCustom(size: 8),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 120,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  color: AppColors.CarnationPink,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.directions,
                      color: Colors.white,
                      size: 28,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Map\nDirections",
                      textAlign: TextAlign.center,
                      style: AppStyles.textSize12(
                        color: Colors.white,
                      ).copyWith(),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
