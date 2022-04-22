import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/app_text_style.dart';

class TypeComponentGroup extends StatelessWidget {
  final String type;
  final List<Widget> componentList;

  const TypeComponentGroup({Key? key, required this.type, required this.componentList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Text(
            type,
            style: AppTextStyle.text20Medium(color: Colors.grey),
          ),
        ),
        Wrap(
          spacing: 5.w,
          runSpacing: 10.w,
          children: componentList,
        ),
      ],
    );
  }
}
