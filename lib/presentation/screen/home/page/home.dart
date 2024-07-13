import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterassignment/core/config/theme/app_colors.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../widget/clock_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            height: 57.h,
            child: Row(
              children: [
                Icon(Icons.menu),
                Gap(16),
                Icon(
                  Icons.laptop,
                  size: 37,
                ),
                Gap(8),
                Text(
                  'Flutter Task',
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
          Gap(24),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.16),
                      blurRadius: 6,
                      offset: Offset.zero)
                ]),
            child: Row(
              children: [
                Container(
                    height: 60.r,
                    width: 60.r,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset('assets/images/profile.png')),
                Gap(16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'সম্রাট আল শাহরিয়ার',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Gap(8.0),
                    Text(
                      'সফট বিডি',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6A6A6A),
                          height: 1),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.location_on_outlined,
                          size: 16.sp,
                          color: Color(0xff202020),
                        )),
                        TextSpan(
                          text: 'ঢাকা',
                        )
                      ]),
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6A6A6A),
                          height: 1),
                    )
                  ],
                )
              ],
            ),
          ),
          Gap(20),
          Row(
            children: [
              Container(
                width: 108.w,
                child: CircularPercentIndicator(
                  radius: 54.r,
                  lineWidth: 10.r,
                  startAngle: 180,
                  animation: true,
                  percent: (30 * 6 + 6) / (365 * 5 + 30 * 5 + 12),
                  linearGradient: gradiant1,
                  center: new Text(
                    "৬ মাস ৬ দিন",
                    style: new TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                  ),
                  footer: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: new Text(
                        "সময় অতিবাহিত",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
              ),
              Gap(22),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'মেয়াদকাল',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  FittedBox(
                    child: Text.rich(TextSpan(
                        children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.calendar_month,
                            size: 14.sp,
                          )),
                          WidgetSpan(child: Gap(6)),
                          TextSpan(
                            text: '১ই জানুয়ারি ২০২৪ - ৩১ই জানুয়ারি ২০৩০',
                          )
                        ],
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w500))),
                  ),
                  Gap(12),
                  Text(
                    'আরোও বাকি',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFF737A)),
                  ),
                  ClockWidget(),
                ],
              ))
            ],
          ),
          Gap(20),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 72.h,
                              width: 72.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Icon(
                                Icons.person,
                                color: Colors.green,
                                size: 32.r,
                              ),
                            ),
                            Text(
                              'মেনু নং',
                              style:
                                  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '০০০০১',
                              style:
                                  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 72.h,
                              width: 72.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Icon(
                                Icons.home,
                                color: Colors.green,
                                size: 32.r,
                              ),
                            ),
                            Text(
                              'মেনু নং',
                              style:
                                  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '০০০০২',
                              style:
                                  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 72.h,
                              width: 72.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Icon(
                                Icons.wheelchair_pickup,
                                color: Colors.green,
                                size: 32.r,
                              ),
                            ),
                            Text(
                              'মেনু নং',
                              style:
                              TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '০০০০৩',
                              style:
                              TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 72.h,
                              width: 72.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Icon(
                                Icons.factory_outlined,
                                color: Colors.green,
                                size: 32.r,
                              ),
                            ),
                            Text(
                              'মেনু নং',
                              style:
                              TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '০০০৪',
                              style:
                              TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 72.h,
                              width: 72.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Icon(
                                Icons.note_outlined,
                                color: Colors.green,
                                size: 32.r,
                              ),
                            ),
                            Text(
                              'মেনু নং',
                              style:
                              TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '০০০০৫',
                              style:
                              TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 72.h,
                              width: 72.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Icon(
                                Icons.code,
                                color: Colors.green,
                                size: 32.r,
                              ),
                            ),
                            Text(
                              'মেনু নং',
                              style:
                              TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '০০০০৬',
                              style:
                              TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
