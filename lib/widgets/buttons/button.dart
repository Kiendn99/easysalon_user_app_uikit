import 'package:easysalon_user_app/core/extensions/image_assets_path_extension.dart';
import 'package:easysalon_user_app/core/theme/app_colors.dart';
import 'package:easysalon_user_app/core/theme/app_radius.dart';
import 'package:easysalon_user_app/core/theme/app_text_style.dart';
import 'package:easysalon_user_app/core/utils/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BasicButton extends StatelessWidget {
  final String? label;
  final String? prefixIcon;
  final double? width;
  final Color? backgroundColor;
  void Function()? onPressed;

  BasicButton({Key? key, this.label, this.prefixIcon, this.width, this.backgroundColor, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
              visible: prefixIcon == null ? false : true,
              child: Container(
                  margin: EdgeInsets.only(right: 10.w),
                  child: SvgPicture.asset(
                    prefixIcon.toString().getSVGImageAssets,
                    width: 20.h,
                    height: 20.h,
                  ))),
          Text(
            label!,
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: Size.fromWidth(width!.w),
          primary: backgroundColor,
          textStyle: AppTextStyle.text16Regular(),
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.radius8))),
    );
  }
}

class BasicButtonWidth200 extends BasicButton {
  final String? label;
  final String? prefixIcon;
  final Color? backgroundColor;
  void Function()? onPressed;

  BasicButtonWidth200({Key? key, this.label, this.prefixIcon, this.backgroundColor, this.onPressed})
      : super(key: key, label: label, prefixIcon: prefixIcon, width: 200, backgroundColor: backgroundColor, onPressed: onPressed);
}

class FullWidthButtonDefault extends BasicButton {
  final String? label;
  final String? prefixIcon;
  final Color? backgroundColor;
  void Function()? onPressed;

  FullWidthButtonDefault({Key? key, this.label, this.prefixIcon, this.backgroundColor, this.onPressed})
      : super(
            key: key,
            label: label,
            prefixIcon: prefixIcon,
            backgroundColor: backgroundColor,
            width: MediaQuery.of(NavigationService.navigatorKey.currentContext!).size.width,
            onPressed: onPressed);
}

class GreenFullWidthButton extends FullWidthButtonDefault {
  final String? label;
  final String? prefixIcon;
  void Function()? onPressed;

  GreenFullWidthButton({Key? key, this.label, this.prefixIcon, this.onPressed})
      : super(
          key: key,
          label: label,
          prefixIcon: prefixIcon,
          backgroundColor: AppColors.freshGreen,
          onPressed: onPressed,
        );
}

class CoupleOptionButton extends StatelessWidget {
  final String labelButton1;
  final String labelButton2;
  final String? prefixIcon1;
  final String? prefixIcon2;
  final Color? colorButton1;
  final Color? colorButton2;
  void Function()? onPressedButton1;
  void Function()? onPressedButton2;

  CoupleOptionButton(
      {Key? key,
      required this.labelButton1,
      required this.labelButton2,
      this.prefixIcon1,
      this.prefixIcon2,
      this.colorButton1,
      this.colorButton2,
      this.onPressedButton1,
      this.onPressedButton2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: FullWidthButtonDefault(
          label: labelButton1,
          prefixIcon: prefixIcon1,
          backgroundColor: colorButton1,
          onPressed: onPressedButton1,
        )),
        SizedBox(
          width: 16.w,
        ),
        Expanded(
            child: FullWidthButtonDefault(
          label: labelButton2,
          prefixIcon: prefixIcon2,
          backgroundColor: colorButton2,
          onPressed: onPressedButton2,
        )),
      ],
    );
  }
}

class IconButtonWithRadius16 extends StatelessWidget {
  final String? label;
  final String icon;
  final Color color;
  void Function()? onPressed;

  IconButtonWithRadius16({
    Key? key,
    this.label,
    required this.icon,
    this.color = AppColors.mediumBlue,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          MaterialButton(
            child: SvgPicture.asset(
              icon.getSVGImageAssets,
              width: 24.h,
              height: 24.h,
            ),
            color: color,
            elevation: 1,
            onPressed: onPressed,
            minWidth: 0,
            height: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.radius16)),
            padding: REdgeInsets.all(9),
            //visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          ),
          SizedBox(
            height: 7.h,
          ),
          Visibility(
              visible: label == null ? false : true,
              child: Container(
                width: 75.w,
                child: Text(
                  label.toString(),
                  style: AppTextStyle.text12Regular(),
                  textAlign: TextAlign.center,
                ),
              ))
        ],
      ),
    );
  }
}

class StatusButton extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  void Function()? onPressed;

  StatusButton({Key? key, required this.label, this.backgroundColor, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: Size(110.w, 24.h),
          primary: _colorButton(label),
          padding: EdgeInsets.zero,
          textStyle: AppTextStyle.text13Regular(),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.radius4))),
    );
  }

  Color? _colorButton(String label) {
    switch (label) {
      case "Đã xác nhận":
        return AppColors.mediumBlue;
      case "Chờ xác nhận":
        return AppColors.mediumGrey;
      case "Check in":
        return AppColors.mediumPinkPurple;
      case "Đang sử dụng":
      case "Đã thanh toán":
        return AppColors.freshGreen;
      default:
        return backgroundColor;
    }
  }
}
