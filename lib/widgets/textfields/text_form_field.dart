import 'package:easysalon_user_app/core/extensions/image_assets_path_extension.dart';
import 'package:easysalon_user_app/core/values/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_radius.dart';
import '../../core/theme/app_text_style.dart';

class TextFormFieldDefault extends StatelessWidget {
  final String hintText;
  final String? prefixIcon;
  final String? suffixIcon;
  final int? minLines;
  final TextStyle? textStyle;
  final int? maxLines;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool? hideText;
  final EdgeInsetsGeometry? contentPadding;
  void Function()? suffixIconOnTap;

  TextFormFieldDefault(
      {Key? key,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.validator,
      this.controller,
      this.hideText,
      this.suffixIconOnTap,
      this.maxLines = 1,
      this.minLines,
      this.contentPadding,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.red,
      cursorWidth: 1,
      cursorHeight: 22.h,
      controller: controller,
      obscureText: hideText ?? false,
      minLines: minLines ?? 1,
      maxLines: maxLines,
      textAlignVertical: TextAlignVertical.center,
      style: textStyle ?? AppTextStyle.text13Regular(),
      validator: validator,
      decoration: InputDecoration(
          filled: true,
          alignLabelWithHint: true,
          contentPadding: contentPadding?? EdgeInsets.only(top: 14.h, bottom: 14.h, left: 26.w, right: 15.w),
          hintStyle: textStyle ?? AppTextStyle.text13Regular(),
          hintText: hintText,
          isDense: true,
          suffixIcon: suffixIcon == null
              ? null
              : Container(
                  margin: EdgeInsets.only(right: 12.w),
                  child: GestureDetector(
                    onTap: suffixIconOnTap,
                    child: SvgPicture.asset(
                      suffixIcon!.getSVGImageAssets,
                    ),
                  ),
                ),
          suffixIconConstraints: BoxConstraints(maxHeight: 36.h),
          prefixIcon: prefixIcon == null
              ? null
              : Container(
                  margin: EdgeInsets.only(left: 12.w, right: 10.w),
                  child: SvgPicture.asset(
                    prefixIcon!.getSVGImageAssets,
                  ),
                ),
          prefixIconConstraints: BoxConstraints(maxHeight: 36.h),
          fillColor: AppColors.superLightGrey,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                AppRadius.radius8,
              ),
              borderSide: BorderSide.none)),
    );
  }
}

class PassWordTextFormField extends StatefulWidget {
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  PassWordTextFormField({
    Key? key,
    required this.hintText,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  State<PassWordTextFormField> createState() => _PassWordTextFormFieldState();
}

class _PassWordTextFormFieldState extends State<PassWordTextFormField> {
  bool hideText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldDefault(
      hintText: widget.hintText,
      hideText: hideText,
      suffixIcon: hideText ? AppImages.icHidePass : AppImages.icShowPass,
      suffixIconOnTap: () => setState(() {
        hideText = !hideText;
      }),
      validator: widget.validator,
      controller: widget.controller,
    );
  }
}
