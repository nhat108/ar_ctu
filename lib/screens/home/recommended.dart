import 'package:ar_ctu/screens/list_recommended/list_recommended_page.dart';
import 'package:ar_ctu/screens/room_details/room_details_page.dart';
import 'package:ar_ctu/utils/app_colors.dart';
import 'package:ar_ctu/utils/app_routes.dart';
import 'package:ar_ctu/utils/app_styles.dart';
import 'package:ar_ctu/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended",
                style: AppStyles.textSizeCustom(
                  size: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () {
                  AppRoutes.push(context, ListRecommendedPage());
                },
                child: Text(
                  "See all",
                  style: AppStyles.textSize14().copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) {
                return GestureDetector(
                  onTap: () {
                    AppRoutes.push(context, RoomDetailsPage());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              CacheImageNetworkWidget(
                                width: 200,
                                height: 120,
                                borderRadius: 10,
                                imageUrl:
                                    'https://s.yimg.jp/images/tbv/img/news/202011/CTU_JobFair_2020_01.jpg',
                              ),
                              Positioned.fill(
                                top: 10,
                                right: 10,
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: AppColors.LightSkyBlue,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.phone_android,
                                      size: 15,
                                      color: AppColors.CherryPie,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Khoa CNTT",
                                        style: AppStyles.textSize16(),
                                      ),
                                      Text(
                                        "Rộng: 500m2",
                                        style: AppStyles.textSize12(
                                          color: AppColors.CarnationPink,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.CarnationPink,
                                    shape: BoxShape.circle,
                                  ),
                                  width: 35,
                                  height: 35,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
