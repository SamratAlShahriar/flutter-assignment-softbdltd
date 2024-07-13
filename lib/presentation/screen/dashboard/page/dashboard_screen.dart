import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterassignment/core/config/theme/app_colors.dart';
import 'package:flutterassignment/presentation/screen/dashboard/controller/dashboard_controller.dart';
import 'package:flutterassignment/presentation/screen/dashboard/page/timeline.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'home.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.find<DashboardController>();
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: dashboardController.pageController,
          onPageChanged: (value) => dashboardController.currentIndex.value = value,
          children: [
            Home(),
            Timeline(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration:
                BoxDecoration(gradient: gradiant1, shape: BoxShape.circle),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 32.sp,
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 8),
                    spreadRadius: 0,
                    blurRadius: 10)
              ]),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: Color(0xff202020),
            currentIndex: dashboardController.currentIndex.value,
            onTap: (value) {
              dashboardController.currentIndex.value = value;
              dashboardController.pageController.animateToPage(value,
                  duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: 'Timeline'),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'History'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
