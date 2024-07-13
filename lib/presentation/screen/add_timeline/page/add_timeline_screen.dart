import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterassignment/core/config/theme/app_colors.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AddTimelineScreen extends StatelessWidget {
  const AddTimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 64.h,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: IconButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        icon: Icon(Icons.arrow_back),
                      ),
                      Spacer(),
                      Text(
                        'নতুন যোগ করুন',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Gap(20),
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'অনুচ্ছেদ',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff202020)),
                          ),
                          Text(
                            '৪৫ শব্দ',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6A6A6A)),
                          ),
                        ],
                      ),
                      Gap(8),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'অনুচ্ছেদ লিখুন',
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6a6a6a)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.w, vertical: 9.h),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF2F2F2))),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      )
                    ],
                  ),
                ),
                Gap(20),
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'অনুচ্ছেদের বিভাগ',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff202020)),
                          ),
                        ],
                      ),
                      Gap(8),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'অনুচ্ছেদের বিভাগ নির্বাচন করুন',
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6a6a6a)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.w, vertical: 9.h),
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            size: 12.sp,
                            color: Color(0xff6A6A6A),
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF2F2F2))),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'তারিখ ও সময়',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff202020)),
                          ),
                        ],
                      ),
                      Gap(8),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'নির্বাচন করুন',
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6a6a6a)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.w, vertical: 9.h),
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            size: 12.sp,
                            color: Color(0xff6A6A6A),
                          ),
                          prefixIcon: Icon(
                            Icons.calendar_month,
                            size: 12.sp,
                            color: Color(0xff6A6A6A),
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF2F2F2))),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'স্থান',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff202020)),
                          ),
                        ],
                      ),
                      Gap(8),
                      TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'নির্বাচন করুন',
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6a6a6a)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.w, vertical: 9.h),
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            size: 12.sp,
                            color: Color(0xff6A6A6A),
                          ),
                          prefixIcon: Icon(
                            Icons.location_on_outlined,
                            size: 12.sp,
                            color: Color(0xff6A6A6A),
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF2F2F2))),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'অনুচ্ছেদের বিবরণ',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff202020)),
                          ),
                          Text(
                            '১২০ শব্দ',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6A6A6A)),
                          ),
                        ],
                      ),
                      Gap(8),
                      TextFormField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'কার্যক্রমের বিবরণ লিখুন',
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6a6a6a)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.w, vertical: 9.h),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF2F2F2))),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      )
                    ],
                  ),
                ),
                Gap(20),
                InkWell(
                  onTap: () {
                    Get.dialog(SimpleDialog(

                      contentPadding: EdgeInsets.all( 20.w),
                      children: [
                        Gap(20),
                        Image.asset('assets/images/success_tick.png', height: 96.h,),
                        Gap(20),
                        Text(
                          'নতুন অনুচ্ছেদ সংরক্ষন',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff202020),
                          ),
                        ),
                        Gap(8),
                        Text(
                          'আপনার সময়রেখাতে নতুন অনুচ্ছেদ সংরক্ষণ সম্পুর্ন হয়েছে ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6a6a6a),
                          ),
                        ),
                      ],
                    ));
                  },
                  child: Container(
                    height: 46.h,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        gradient: gradiant1,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'সংরক্ষন করুন',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Gap(40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
