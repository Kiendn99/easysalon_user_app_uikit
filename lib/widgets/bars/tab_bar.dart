import 'package:easysalon_user_app/core/theme/app_colors.dart';
import 'package:easysalon_user_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarApp extends StatefulWidget {
  final List<String> tabs;
  void Function(int)? onTap;

   TabBarApp({Key? key, required this.tabs, this.onTap}) : super(key: key);

  @override
  State<TabBarApp> createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, minTextAdapt: true, designSize: const Size(375, 812));

    return Scaffold(
      body: Column(
        children: [
          //Tab bar
          _tabBar(),
          //Tab bar View
          _tabBarView()
        ],
      ),
    );
  }

  _tabBar() {
    return TabBar(
      controller: _tabController,
      labelStyle: AppTextStyle.text16Regular(),
      tabs: List.generate(
          widget.tabs.length,
          (index) => Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Text(
                  widget.tabs[index],
                ),
              )),
      indicatorColor: AppColors.mediumBlue,
      onTap: widget.onTap,
      labelPadding: (widget.tabs.length < 4 || MediaQuery.of(context).size.width > 400) ? EdgeInsets.zero : null,
      labelColor: AppColors.mediumBlue,
      unselectedLabelColor: AppColors.mediumGrey,
      isScrollable: (widget.tabs.length < 4 || MediaQuery.of(context).size.width > 400) ? false : true,
    );
  }

  _tabBarView() {
    return Expanded(
        child: TabBarView(
            controller: _tabController, children: List.generate(widget.tabs.length, (index) => Center(child: Text(widget.tabs[index], style: AppTextStyle.text20Regular())))));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
}
