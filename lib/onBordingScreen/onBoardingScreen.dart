import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../View/Auth/loginScreen.dart';
import '../constants/appColors.dart';
import '../customWidget/customSharePreference.dart';
import '../customWidget/myText.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  late PageController _controller;
  int currentindex = 0;
  int index = 0;
  List list = [
    {
      'Txt': 'Welcome to Crypto App',
      'Dics': 'Explore the world of cryptocurrencies with our app.',
      'img': 'assets/Animation - 1703048444362.json'
    },
    {
      'Txt': 'Real-Time Market Data',
      'Dics':
          'Get real-time market data, prices, and trends at your fingertips.',
      'img': 'assets/Animation - 1703048496063.json'
    },
    {
      'Txt': 'Secure Transactions',
      'Dics':
          'Ensure secure and encrypted transactions for your peace of mind.',
      'img': 'assets/Animation - 1703049295337.json'
    },
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: list.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentindex = index;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Opacity(
                      opacity: currentindex == index ? 1.0 : 0.0,
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Spacer(),
                            Lottie.asset(
                              list[currentindex][
                                  'img'], // Replace with your Lottie animation file
                              height: 40.h,
                              repeat: true,
                              reverse: false,
                              animate: true,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 45.h,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 50.w,
                          child: myText(
                            maxline: 2,
                            text: list[currentindex]['Txt'],
                            color: AppColors.secondaryColor,
                            size: 18.sp,
                            fontweight: FontWeight.w700,
                            height: 1.33,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.5.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 65.w,
                          child: myText(
                            maxline: 6,
                            text: list[currentindex]['Dics'],
                            color: AppColors.textColor,
                            size: 12.sp,
                            fontweight: FontWeight.w300,
                            height: 1.50,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.offAll(() =>  CryptoLoginScreen());
                              // SharedPreferencesUtil.setString(
                              //     'onBoarding', 'true');
                            },
                            child: myText(
                              text: "Skip",
                              color: AppColors.textColor,
                              size: 10.sp,
                              fontweight: FontWeight.w400,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            list.length,
                            (index) => Container(
                              height: 4,
                              width: 4,
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                color: currentindex == index
                                    ? AppColors.primaryColor
                                    : const Color(0xffC4C4C4),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              if (currentindex == list.length - 1) {
                                Get.offAll(() =>  CryptoLoginScreen());
                                // SharedPreferencesUtil.setString(
                                //     'onBoarding', 'true');
                              }
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeOut,
                              );
                            },
                            child: myText(
                              text: "Next",
                              color: AppColors.primaryColor,
                              size: 10.sp,
                              fontweight: FontWeight.w400,
                            ))
                      ],
                    ),
                    SizedBox(height: 4.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
