import 'package:ar_ctu/utils/app_assets.dart';
import 'package:ar_ctu/utils/app_routes.dart';
import 'package:ar_ctu/utils/app_styles.dart';
import 'package:ar_ctu/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';

import 'enter_email_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget _buildImages() {
    return Stack(
      children: [
        Positioned(
          left: 150,
          child: CacheImageNetworkWidget(
            borderRadius: 1000,
            imageUrl:
                'https://huynhhieutravel.com/wp-content/uploads/2018/08/C%E1%BA%A7n-Th%C6%A1-x%C6%B0a2.jpg',
            width: 60,
            height: 60,
          ),
        ),
        Positioned(
          left: 40,
          top: 80,
          child: CacheImageNetworkWidget(
            borderRadius: 1000,
            imageUrl: 'http://aptech.cusc.vn/Portals/1/userfiles/phmai/1a.jpg',
            width: 80,
            height: 80,
          ),
        ),
        Positioned(
          left: 200,
          top: 160,
          child: CacheImageNetworkWidget(
            borderRadius: 1000,
            imageUrl:
                'https://ketnoigiaoduc.vn/upload_images/images/hoc-truong-nao-tot3.jpg',
            width: 50,
            height: 50,
          ),
        ),
        Positioned(
          left: 90,
          top: 200,
          child: CacheImageNetworkWidget(
            borderRadius: 1000,
            imageUrl:
                'https://top10timkiem.vn/wp-content/uploads/2021/08/top-7-cac-truong-dai-hoc-o-can-tho-tot-nhat-hien-nay-12-min.jpg',
            width: 65,
            height: 65,
          ),
        ),
        Positioned(
          right: 80,
          top: 250,
          child: CacheImageNetworkWidget(
            borderRadius: 1000,
            imageUrl:
                'https://live.staticflickr.com/5001/5259858247_dd12f1731d_b.jpg',
            width: 45,
            height: 45,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xffF1EFFC),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        "Login",
                        style: AppStyles.textSize16(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  AppRoutes.push(context, EnterEmailPage());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff5D4CCA),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Text(
                          "Register",
                          style: AppStyles.textSize16(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            AppAssets.backgroundApp,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fitWidth,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CacheImageNetworkWidget(
                        imageUrl:
                            'https://upload.wikimedia.org/wikipedia/vi/thumb/6/6c/Logo_Dai_hoc_Can_Tho.svg/1200px-Logo_Dai_hoc_Can_Tho.svg.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "CTU AR",
                        style: AppStyles.textSize14(
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Create better\ntogether. Whenever.",
                    style: AppStyles.textSizeCustom(
                        size: 30, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Join the world's largest community design",
                    style: AppStyles.textSize14(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(child: _buildImages()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
