import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterassignment/domain/entity/data_entity.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../../core/config/theme/app_colors.dart';

class EventSingleItem extends StatelessWidget {
  final int index;
  final DataEntity entity;

  const EventSingleItem({super.key, required this.index, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 72.w,
          child: Text(
            DateFormat('hh:mm মি.', 'bn').format(entity.date),
            //'সকাল ১১:০০ মি.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14.sp, fontWeight: FontWeight.w500, height: 1),
          ),
        ),
        Gap(20),
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
              gradient: index % 2 == 0 ? gradiant1 : gradiant2,
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.timer_sharp,
                    color: Colors.white,
                    size: 14.sp,
                  ),
                  Gap(6),
                  Text(
                    DateFormat('hh:mm মি.', 'bn').format(entity.date),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Gap(8),
              Text(
                entity.name,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Gap(8),
              Text(
                entity.category,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Gap(8),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 16.sp,
                    color: Colors.white,
                  ),
                  Gap(6),
                  Text(
                    entity.location,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ))
      ],
    );
  }
}
