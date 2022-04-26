import 'package:easysalon_user_app/widgets/bars/bottom_bar.dart';
import 'package:easysalon_user_app/widgets/type%20component%20group/type_component_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/bars/tab_bar.dart';
import '../widgets/header/bacsic_header_intro.dart';

class BarsPage extends StatelessWidget {
  const BarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, minTextAdapt: true, designSize: const Size(375, 812));

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BasicHeaderIntro(
              title: 'Bar',
              description: "To trigger an operation",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  TypeComponentGroup(type: "Bottom Bar", componentList: [
                    Container(
                      height: 200.h,
                      child:  BottomNavigationAppBar(),
                    ),
                    TypeComponentGroup(type: "TabBar", componentList: [
                    Container(
                      height: 200.h,
                      child:  TabBarApp(tabs: ["Quan tâm", "Khuyến mãi", "Giao dịch", "Cập nhật"],),
                    ),
                    Container(
                      height: 200.h,
                      child:  TabBarApp(tabs: ["Chờ đánh giá", "Đã đánh giá"],),
                    ),
                    Container(
                      height: 200.h,
                      child:  TabBarApp(tabs: ["Tất cả lịch sử", "Đã nhận", "Đã dùng"],),
                    ),
                    
                    
                  ]),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
