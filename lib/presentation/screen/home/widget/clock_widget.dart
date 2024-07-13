import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../common/utils/helper_functions.dart';

class ClockWidget extends StatefulWidget {
  const ClockWidget({super.key});

  @override
  State<ClockWidget> createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final lastDate = DateTime(2030);
    final now = DateTime.now();
    final year =
        (lastDate.difference(now).inDays ~/ 365).toString().padLeft(2, '0');
    final month =
        (lastDate.difference(now).inDays % 12).toString().padLeft(2, '0');

    final day =
        (lastDate.difference(now).inDays % 365).toString().padLeft(2, '0');
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  height: 24.h,
                  width: 24.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFF737A)),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Text(convertNumberToBn(year[0])),
                ),
                Gap(4),
                Container(
                  height: 24.h,
                  width: 24.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFF737A)),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Text(convertNumberToBn(year[1])),
                ),
              ],
            ),
            Gap(4.h),
            Text(
              'বছর',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
        Gap(20),
        Column(
          children: [
            Row(
              children: [
                Container(
                  height: 24.h,
                  width: 24.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFF737A)),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Text(convertNumberToBn(month[0])),
                ),
                Gap(4),
                Container(
                  height: 24.h,
                  width: 24.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFF737A)),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Text(convertNumberToBn(month[1])),
                ),
              ],
            ),
            Gap(4.h),
            Text(
              'মাস',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),

        Gap(20),
        Column(
          children: [
            Row(
              children: [
                Container(
                  height: 24.h,
                  width: 24.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFF737A)),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Text(convertNumberToBn(day[0])),
                ),
                Gap(4),
                Container(
                  height: 24.h,
                  width: 24.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFF737A)),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Text(convertNumberToBn(day[1])),
                ),
              ],
            ),
            Gap(4.h),
            Text(
              'দিন',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            )
          ],
        )

      ],
    );
  }
}
