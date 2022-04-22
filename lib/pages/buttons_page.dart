import 'package:easysalon_user_app/core/theme/app_colors.dart';
import 'package:easysalon_user_app/core/theme/app_text_style.dart';
import 'package:easysalon_user_app/core/values/app_image.dart';
import 'package:easysalon_user_app/widgets/buttons/button.dart';
import 'package:easysalon_user_app/widgets/header/bacsic_header_intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/type component group/type_component_group.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, minTextAdapt: true, designSize: const Size(375, 812));

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              BasicHeaderIntro(
                title: "Button",
                description: "To trigger an open",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TypeComponentGroup(type: "Button with width 200", componentList: [
                      BasicButtonWidth200(
                        label: "Đến trang chủ",
                        onPressed: () {},
                      ),
                      BasicButtonWidth200(
                        label: "Quét mã QR",
                        prefixIcon: AppImages.icQrCode,
                        onPressed: () {},
                      ),
                    ]),
                    TypeComponentGroup(type: "Full width", componentList: [
                      GreenFullWidthButton(
                        label: "Đăng nhập",
                        onPressed: () {},
                      ),
                      FullWidthButtonDefault(
                        label: "Tạo lịch hẹn",
                        onPressed: () {},
                      ),
                      FullWidthButtonDefault(
                        label: "Đăng nhập với Facebook",
                        prefixIcon: AppImages.icFBLogin,
                        onPressed: () {},
                      ),
                    ]),
                    TypeComponentGroup(type: "Couple Option", componentList: [
                      CoupleOptionButton(
                        labelButton1: "Gửi đánh giá",
                        labelButton2: "Đặt lại",
                        colorButton2: AppColors.freshOrange,
                        prefixIcon1: AppImages.icStar,
                        onPressedButton1: () {},
                        onPressedButton2: () {},
                      )
                    ]),
                    TypeComponentGroup(type: "Button Icon with Radius 16", componentList: [
                      IconButtonWithRadius16(
                        icon: AppImages.icCalendar,
                        color: AppColors.mediumBlue,
                        label: "Đặt lịch",
                        onPressed: () {},
                      ),
                      IconButtonWithRadius16(
                        icon: AppImages.icOrderHistory,
                        color: AppColors.mediumGreen,
                        label: "Lịch sử đơn hàng",
                        onPressed: () {},
                      ),
                      IconButtonWithRadius16(
                        icon: AppImages.icVoucher,
                        color: AppColors.mediumPink,
                        label: "Ưu đãi",
                        onPressed: () {},
                      ),
                      IconButtonWithRadius16(
                        icon: AppImages.icReview,
                        color: AppColors.mediumOrange,
                        label: "Đánh giá",
                        onPressed: () {},
                      ),
                    ]),
                    TypeComponentGroup(type: "Status Button", componentList: [
                      StatusButton(
                        label: "Đã xác nhận",
                        onPressed: () {},
                      ),
                      StatusButton(
                        label: "Chờ xác nhận",
                        onPressed: () {},
                      ),
                      StatusButton(
                        label: "Check in",
                        onPressed: () {},
                      ),
                      StatusButton(
                        label: "Đang sử dụng",
                        onPressed: () {},
                      ),
                      StatusButton(
                        label: "Đã thanh toán",
                        onPressed: () {},
                      ),
                    ])
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
