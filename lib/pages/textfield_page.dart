import 'package:easysalon_user_app/core/theme/app_colors.dart';
import 'package:easysalon_user_app/core/theme/app_radius.dart';
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
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.lightGrey,
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
