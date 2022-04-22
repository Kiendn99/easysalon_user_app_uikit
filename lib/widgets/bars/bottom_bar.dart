import 'package:easysalon_user_app/core/extensions/image_assets_path_extension.dart';
import 'package:easysalon_user_app/core/theme/app_text_style.dart';
import 'package:easysalon_user_app/core/values/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationAppBar extends StatefulWidget {
  const BottomNavigationAppBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigationAppBar> createState() => _BottomNavigationAppBarState();
}

class _BottomNavigationAppBarState extends State<BottomNavigationAppBar> {
  
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, minTextAdapt: true, designSize: const Size(375, 812));
    
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => setState(() {
          _selectedIndex = index;
        }),
        children: [
          Center(
            child: Text("My Salon"),
          ),
          Center(
            child: Text("Lịch hẹn"),
          ),
          Center(
            child: Text("Thông báo"),
          ),
          Center(
            child: Text("Tài khoản"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.h,
        selectedLabelStyle: AppTextStyle.text12Regular(),
        unselectedLabelStyle: AppTextStyle.text12Regular(),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.icHomeUnSelected.getSVGImageAssets),
            activeIcon: SvgPicture.asset(AppImages.icHomeSelected.getSVGImageAssets),
            label: 'My Salon',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.icCalendarUnSelected.getSVGImageAssets),
            activeIcon: SvgPicture.asset(AppImages.icCalendarSelected.getSVGImageAssets),
            label: 'Lịch hẹn',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.icNotifyUnSelected.getSVGImageAssets),
            activeIcon: SvgPicture.asset(AppImages.icNotifySelected.getSVGImageAssets),
            label: 'Thông báo',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.icProfileUnSelected.getSVGImageAssets),
            activeIcon: SvgPicture.asset(AppImages.icProfileSelected.getSVGImageAssets),
            label: 'Tài khoản',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          {
            _pageController.animateToPage(
              index,
              duration: const Duration(
                milliseconds: 200,
              ),
              curve: Curves.easeIn,
            );
          }
        },
      ),
    );
  }
}
