import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/app_text_style.dart';

class BasicHeaderIntro extends StatelessWidget {
  final String title;
  final String? description;

  const BasicHeaderIntro({Key? key, required this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.text22Regular(),
          ),
          Visibility(
            visible: description == null ? false : true,
            child: Container(
              margin: EdgeInsets.only(top: 15.h),
              child: Text(
                description.toString(),
                style: AppTextStyle.text15Regular(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
      padding: EdgeInsets.only(top: 25.h, bottom: 25.h, left: 20.w),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
    );
  }
}
