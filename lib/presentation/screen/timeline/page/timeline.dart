import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterassignment/core/config/route/app_routes.dart';
import 'package:flutterassignment/core/config/theme/app_colors.dart';
import 'package:flutterassignment/presentation/common/utils/helper_functions.dart';
import 'package:flutterassignment/presentation/screen/timeline/controller/timeline_controller.dart';
import 'package:flutterassignment/presentation/screen/timeline/widget/event_single_item.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Timeline extends StatelessWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context) {
    final timelineController = Get.find<TimelineController>();
    timelineController.getDateData();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            height: 57.h,
            child: Row(
              children: [
                Icon(Icons.menu),
                Spacer(),
                Text(
                  'সময়রেখা',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                Spacer(),
                const CircleAvatar(
                  backgroundColor: Color(0xFFF4F5F6),
                  child: Badge(
                    child: Icon(
                      Icons.notifications_none,
                    ),
                  ),
                )
              ],
            ),
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'আজ, ১২ জুলাই',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoute.addTimelinePage);
                },
                child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: BoxDecoration(
                        gradient: gradiant1,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'নতুন যুক্ত করুন',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
              )
            ],
          ),
          Gap(20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      blurRadius: 6,
                      offset: Offset.zero)
                ]),
            child: Obx(
                  () =>
                  EasyInfiniteDateTimeLine(
                    controller: timelineController.timelineController,
                    showTimelineHeader: false,
                    dayProps: EasyDayProps(
                        dayStructure: DayStructure.dayNumDayStr,
                        height: 100.h,
                        width: 40.w),
                    itemBuilder: (context, date, isSelected, onTap) {
                      final selectedBgColor = Colors.green;
                      final selectedOnColor = Colors.white;

                      return GestureDetector(
                        onTap: onTap,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.h),
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            //color: isSelected ? selectedBgColor : null,
                              borderRadius: BorderRadius.circular(50.r),
                              border: isSelected
                                  ? Border.all(color: selectedBgColor)
                                  : null),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                weekdayMapShortBn[date.weekday]!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff6A6A6A),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              Gap(12),
                              Text(
                                convertNumberToBn(date.day.toString()),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  //color: isSelected ? selectedOnColor : null,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 1),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    firstDate: DateTime.now().subtract(Duration(days: 7)),
                    focusDate: timelineController.selectedDate.value,
                    lastDate: DateTime.now().add(Duration(days: 7)),
                    onDateChange: (selectedDate) {
                      timelineController.getDateData(date: selectedDate);
                    },
                  ),
            ),
          ),
          Gap(20),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        blurRadius: 6,
                        offset: Offset.zero)
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'আজকের কার্যক্রম',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Gap(20),
                  Flexible(
                    child: Obx(
                          () {
                        if (timelineController.isLoading.value) {
                          return Center(child: CircularProgressIndicator(),);
                        }
                        if (timelineController.calendarList.isEmpty) {
                          return Center(child: Text('আজ কোনো কার্যক্রম নেই।',
                            style: TextStyle(color: Colors.grey, fontSize: 14.sp),),);
                        }
                        return ListView.separated(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(bottom: 20.h),
                          itemCount: timelineController.calendarList.length,
                          separatorBuilder: (context, index) => const Gap(16),
                          itemBuilder: (context, index) =>
                              EventSingleItem(
                                  index: index,
                                  entity: timelineController
                                      .calendarList[index]),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
