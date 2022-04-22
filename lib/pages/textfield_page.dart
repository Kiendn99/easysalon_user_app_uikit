import 'package:easysalon_user_app/core/theme/app_text_style.dart';
import 'package:easysalon_user_app/core/values/app_image.dart';
import 'package:easysalon_user_app/widgets/textfields/text_form_field.dart';
import 'package:easysalon_user_app/widgets/type%20component%20group/type_component_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    TypeComponentGroup(type: "TextFormField Default", componentList: [
                      TextFormFieldDefault(
                        hintText: "Email hoặc số điện thoại",
                      ),
                      TextFormFieldDefault(
                        hintText: "Searching",
                        prefixIcon: AppImages.icSearch,
                      ),
                      TextFormFieldDefault(
                        hintText: "Searching",
                        suffixIcon: AppImages.icSearch,
                      ),
                    ]),
                    TypeComponentGroup(type: "Password", componentList: [
                      PassWordTextFormField(hintText: "Mật khẩu"),
                    ]),
                    TypeComponentGroup(type: "Write Review", componentList: [
                      TextFormFieldDefault(
                        hintText: "Viết đánh giá của bạn ở đây...",
                        minLines: 5,
                        maxLines: null,
                        contentPadding: EdgeInsets.only(top: 19.h, left: 16.w),
                        textStyle: AppTextStyle.text16Regular(),
                      ),
                    ]),
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
