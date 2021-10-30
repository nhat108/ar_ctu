import 'package:ar_ctu/blocs/auth/auth_bloc.dart';
import 'package:ar_ctu/screens/auth/login_page.dart';
import 'package:ar_ctu/screens/auth/register_page.dart';
import 'package:ar_ctu/utils/app_assets.dart';
import 'package:ar_ctu/utils/app_routes.dart';
import 'package:ar_ctu/utils/app_styles.dart';
import 'package:ar_ctu/widgets/custom_textfield.dart';
import 'package:ar_ctu/widgets/overlay_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterEmailPage extends StatefulWidget {
  const EnterEmailPage({Key? key}) : super(key: key);

  @override
  _EnterEmailPageState createState() => _EnterEmailPageState();
}

class _EnterEmailPageState extends State<EnterEmailPage> {
  bool isValidEmail = false;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return OverlayLoading(
        isLoading: state.isAuthLoading!,
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: GestureDetector(
              onTap: () {
                if (isValidEmail) {
                  BlocProvider.of<AuthBloc>(context).add(
                    CheckEmailExisted(
                      email: _textEditingController.text.trim(),
                      onError: (error) {},
                      onSuccess: (existed) {
                        if (existed) {
                          AppRoutes.push(
                              context,
                              LoginPage(
                                  email: _textEditingController.text.trim()));
                        } else {
                          AppRoutes.push(
                              context,
                              RegisterPage(
                                email: _textEditingController.text.trim(),
                              ));
                        }
                      },
                    ),
                  );
                }
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
                        "Next",
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
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300]!.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              AppAssets.arrowBack,
                              width: 9,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter Your\nEmail Address",
                    style: AppStyles.textSizeCustom(
                      size: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    controller: _textEditingController,
                    onValid: (valid) {
                      isValidEmail = valid;
                    },
                    hintText: 'Enter Email',
                    validType: ValidType.Email,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
