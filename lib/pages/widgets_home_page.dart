import 'package:easysalon_user_app/core/theme/app_radius.dart';
import 'package:easysalon_user_app/core/theme/app_text_style.dart';
import 'package:easysalon_user_app/core/values/consts.dart';
import 'package:easysalon_user_app/widgets/header/bacsic_header_intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/utils/navigation_service.dart';

class WidgetsHomePage extends StatelessWidget {
  const WidgetsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, minTextAdapt: true, designSize: const Size(375, 812));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [BasicHeaderIntro(title: "Hello"), _content()],
          ),
        ),
      ),
    );
  }

  Padding _content() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_basicTitle(), _basicItemList()],
      ),
    );
  }

  Card _basicItemList() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.radius15)),
      child: ListView.builder(itemCount: basicList.length, shrinkWrap: true, physics: const NeverScrollableScrollPhysics(), itemBuilder: ((context, index) => _basicItem(index))),
    );
  }

  InkWell _basicItem(int index) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppRadius.radius15),
      onTap: () => Navigator.pushNamed(NavigationService.navigatorKey.currentContext!, basicList[index].route!),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          top: 15.h,
          bottom: 15.h,
          right: 10.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              basicList[index].title!,
              style: AppTextStyle.text15Medium(),
            ),
            Icon(
              Icons.chevron_right,
              size: 25.h,
            )
          ],
        ),
      ),
    );
  }

  Container _basicTitle() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Text(
        "Basic",
        style: AppTextStyle.text20Medium(),
      ),
    );
  }
}
