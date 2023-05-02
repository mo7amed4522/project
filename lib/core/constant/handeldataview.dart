// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:project/core/constant/app_photo.dart';
import 'package:project/core/constant/component.dart';
import 'package:project/core/constant/statusrequest.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest? statusRequest;
  final Widget? widget;
  const HandlingDataView({super.key, this.widget, this.statusRequest});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Lottie.asset(AppPhotoLink.loading,
                        width: Get.width, height: Get.height / 1.6)),
              ],
            ),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? Scaffold(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Lottie.asset(AppPhotoLink.offline,
                            width: Get.width, height: Get.height / 1.6)),
                  ],
                ),
              )
            : statusRequest == StatusRequest.serverfailure
                ? Scaffold(
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Lottie.asset(AppPhotoLink.error401,
                                width: Get.width, height: Get.height / 1.6)),
                        Text("Token is not vaild"),
                      ],
                    ),
                  )
                : statusRequest == StatusRequest.failure
                    ? Scaffold(
                        body: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Lottie.asset(AppPhotoLink.nodata,
                                    width: Get.width,
                                    height: Get.height / 1.6)),
                          ],
                        ),
                      )
                    : statusRequest == StatusRequest.exeptions
                        ? Scaffold(
                            body: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                    child: Lottie.asset(AppPhotoLink.error401,
                                        width: Get.width,
                                        height: Get.height / 1.6)),
                                Text(
                                  "Bad Request Go Back",
                                ),
                                Spacer(),
                                Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 60,
                                        right: Get.width / 8,
                                        left: Get.width / 8),
                                    child: GestureDetector(
                                        child: animatedOptacity("Back"),
                                        onTap: () {
                                          Get.back();
                                        })),
                              ],
                            ),
                          )
                        : widget!;
  }
}
