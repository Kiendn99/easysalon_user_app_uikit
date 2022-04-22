// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../core/theme/app_colors.dart';
// import '../../core/theme/app_radius.dart';
// import '../../core/theme/app_text_style.dart';
// import '../../core/values/app_image.dart';

// Widget textFormFieldApp(
//         {String? hintText,
//         EdgeInsetsGeometry? contentPadding,
//         double marginTop = 0,
//         Widget? suffixIcon,
//         double radius = 10,
//         TextEditingController? controller,
//         void Function(String?)? onSaved,
//         int maxLines = 1,
//         double iconHeight = 0.0,
//         String? initialValue,
//         TextAlign textAlign = TextAlign.start,
//         TextStyle? style,
//         TextStyle? errorStyle,
//         void Function(String)? onChanged,
//         TextInputType? keyboardType,
//         String? Function(String?)? validator}) =>
//     Builder(builder: (context) {
//       return Container(
//         margin: EdgeInsets.only(top: marginTop),
//         child: TextFormField(
//           textAlign: textAlign,
//           validator: validator,
//           onSaved: onSaved,
//           controller: controller,
//           initialValue: initialValue,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           maxLines: maxLines,
//           style: style,
//           keyboardType: keyboardType,
//           onChanged: onChanged,
//           decoration: InputDecoration(
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(radius), borderSide: BorderSide(color: context.isDarkMode ? AppColors.primaryDarkModeColor : AppColors.primaryLightModeColor)),
//             hintText: hintText,
//             suffixIconConstraints: BoxConstraints(minHeight: iconHeight),
//             suffixIcon: suffixIcon,
//             errorStyle: errorStyle,
//             hintStyle: style,
//             contentPadding: contentPadding,
//             errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(radius), borderSide: BorderSide(color: context.isDarkMode ? AppColors.primaryDarkModeColor : AppColors.primaryLightModeColor)),
//             focusedErrorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(radius), borderSide: BorderSide(color: context.isDarkMode ? AppColors.primaryDarkModeColor : AppColors.primaryLightModeColor)),
//             focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(radius), borderSide: BorderSide(color: context.isDarkMode ? AppColors.primaryDarkModeColor : AppColors.primaryLightModeColor)),
//           ),
//         ),
//       );
//     });


//     class TextFormFieldDefault extends StatelessWidget {
//      final String? hintText,
//       final  EdgeInsetsGeometry? contentPadding,
//         Widget? suffixIcon,
//         TextEditingController? controller,
//         void Function(String?)? onSaved,
//         int maxLines = 1,
//         double iconHeight = 0.0,
//         String? initialValue,
//         TextAlign textAlign = TextAlign.start,
//         TextStyle? style,
//         TextStyle? errorStyle,
//         void Function(String)? onChanged,
//         TextInputType? keyboardType,
//         String? Function(String?)? validator
//       const TextFormFieldDefault({ Key? key }) : super(key: key);
    
//       @override
//       Widget build(BuildContext context) {
//         return TextFormField(
//                       cursorColor: Colors.red,
//                       cursorWidth: 1,
//                       cursorHeight: 22.h,
//                       style: AppTextStyle.text13Regular(),
//                       validator: (value) {},
//                       textAlignVertical: TextAlignVertical.center,
//                       decoration: InputDecoration(
//                           filled: true,
//                           contentPadding: /* EdgeInsets.only(top: 14.h, bottom: 14.h, left: 26.w, right: 20.w) */ contentPadding?? EdgeInsets.zero,
//                           hintStyle: AppTextStyle.text13Regular(color: AppColors.lightGrey),
//                           hintText: "Mật khẩu",
//                           isDense: true,
                          
//                           alignLabelWithHint: true,
//                           suffixIcon: Container(
//                             margin: EdgeInsets.only(right: 12.w),
//                             child: GestureDetector(
//                               onTap: () {
//                                 print("object");
//                               },
//                               child: SvgPicture.asset(
//                                 AppImages.icShowPass.getSVGImageAssets,
//                               ),
//                             ),
//                           ),
//                           suffixIconConstraints: BoxConstraints(maxHeight: 36.h, maxWidth: 36.w),
//                           fillColor: AppColors.superLightGrey,
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(
//                                 AppRadius.radius8,
//                               ),
//                               borderSide: BorderSide.none)),
//                     );
//       }
//     }
