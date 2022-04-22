import 'package:easysalon_user_app/core/extensions/image_assets_path_extension.dart';
import 'package:easysalon_user_app/core/theme/app_colors.dart';
import 'package:easysalon_user_app/core/theme/app_radius.dart';
import 'package:easysalon_user_app/core/theme/app_text_style.dart';
import 'package:easysalon_user_app/core/values/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/header/bacsic_header_intro.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, minTextAdapt: true, designSize: const Size(375, 812));

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              BasicHeaderIntro(
                title: 'Text Field',
                description: "To trigger an operation",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: Colors.red,
                      cursorWidth: 1,
                      cursorHeight: 22.h,
                      style: AppTextStyle.text13Regular(),
                      validator: (value) {},
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          filled: true,
                          contentPadding: EdgeInsets.only(top: 14.h, bottom: 14.h, left: 26.w, right: 20.w),
                          hintStyle: AppTextStyle.text13Regular(color: AppColors.lightGrey),
                          hintText: "Mật khẩu",
                          isDense: true,
                          
                          alignLabelWithHint: true,
                          suffixIcon: Container(
                            margin: EdgeInsets.only(right: 12.w),
                            child: GestureDetector(
                              onTap: () {
                                print("object");
                              },
                              child: SvgPicture.asset(
                                AppImages.icShowPass.getSVGImageAssets,
                              ),
                            ),
                          ),
                          suffixIconConstraints: BoxConstraints(maxHeight: 36.h, maxWidth: 36.w),
                          fillColor: AppColors.superLightGrey,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                AppRadius.radius8,
                              ),
                              borderSide: BorderSide.none)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
