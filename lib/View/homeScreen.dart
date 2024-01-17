import 'package:crptoproject/constants/appColors.dart';
import 'package:crptoproject/customWidget/myText.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> cryptoList = [
    {
      'name': 'Bitcoin',
      'image':
          'https://as1.ftcdn.net/v2/jpg/04/63/13/90/1000_F_463139085_UCn1RRLrRQBz8mX0XKVb8ufJR1BwJDYl.jpg',
      'price': 50000.0,
    },
    {
      'name': 'Ethereum',
      'image':
          'https://img.freepik.com/premium-psd/3d-icon-golden-ethereum-sign_930095-24.jpg',
      'price': 3000.0,
    },
    {
      'name': 'Litecoin',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LTC-400.png/800px-LTC-400.png',
      'price': 150.0,
    },
    {
      'name': 'Ripple',
      'image':
          'https://www.shutterstock.com/image-vector/xrp-ripple-icon-sign-payment-260nw-2079960583.jpg',
      'price': 1.5,
    },
    {
      'name': 'Cardano',
      'image':
          'https://pbs.twimg.com/profile_images/1728114482772340736/6CToA6BZ_400x400.jpg',
      'price': 2.0,
    },
  ];

  List<Map<String, dynamic>> cryptoMarketPlaceList = [
    {
      'name': 'Real Estate',
      'image':
          'https://static.vecteezy.com/system/resources/thumbnails/008/124/777/small_2x/real-estate-logo-house-logo-home-logo-sign-symbol-free-vector.jpg',
      'dis': 'Spacious apartment with stunning views.',
    },
    {
      'name': 'Vehicles',
      'image':
          'https://img.freepik.com/free-vector/flat-design-car-dealer-logo_23-2149338507.jpg?w=740&t=st=1705467287~exp=1705467887~hmac=5566899ee2e39841ce461f39b2a334e884409d67778fc57d382ac168522a42a5',
      'dis': 'Fast and sleek sports car for adrenaline lovers.',
    },
    {
      'name': 'Currency',
      'image':
          'https://cdn5.vectorstock.com/i/1000x1000/07/34/crypto-currency-logo-icon-vector-19340734.jpg',
      'dis': 'Cryptocurrency with decentralized blockchain.',
    },
    {
      'name': 'Assets',
      'image':
          'https://www.shutterstock.com/image-vector/xrp-ripple-icon-sign-payment-260nw-2079960583.jpg',
      'dis': 'Precious metal bars for investment.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87.withOpacity(0.3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 22.h,
                width: double.maxFinite,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('assets/backgroundImage.jpg'),fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.black),
                              child:   Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.black),
                              child: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 12.sp,
                                    ),
                                    SizedBox(width: 2.w),
                                    myText(
                                        text: 'Muhammad Usman',
                                        color: Colors.white,
                                        fontweight: FontWeight.w400,
                                        size: 10.sp,
                                        fontFamily: 'Montserrat'),
                                  ],
                                ),
                                SizedBox(height: 0.5.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_city,
                                      color: Colors.white,
                                      size: 12.sp,
                                    ),
                                    SizedBox(width: 2.w),
                                    myText(
                                        text: 'Ovex Technologies',
                                        color: Colors.white,
                                        fontweight: FontWeight.w400,
                                        size: 10.sp,
                                        fontFamily: 'Montserrat'),
                                  ],
                                ),
                                SizedBox(height: 0.5.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 12.sp,
                                    ),
                                    SizedBox(width: 2.w),
                                    myText(
                                        text: '+92 309 3863654',
                                        color: Colors.white,
                                        fontweight: FontWeight.w400,
                                        size: 10.sp,
                                        fontFamily: 'Montserrat'),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                myText(
                                    text: 'Wallet Summary',
                                    color: Color(0xffD4AF37),
                                    fontweight: FontWeight.w400,
                                    size: 10.sp,
                                    fontFamily: 'Montserrat'),
                                SizedBox(height: 0.3.h,),
                                myText(
                                    text: 'BTC - 22.353',
                                    color: Color(0xffD4AF37),
                                    fontweight: FontWeight.w400,
                                    size: 8.sp,
                                    fontFamily: 'Montserrat'),
                                myText(
                                    text: 'Ethereum - 54.353',
                                    color: Color(0xffD4AF37),
                                    fontweight: FontWeight.w400,
                                    size: 8.sp,
                                    fontFamily: 'Montserrat'),

                              ],
                            ),
                            SizedBox(width: 3.w)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: 2.5.h),
                    Row(
                      children: [
                        myText(
                            text: 'My Coins',
                            size: 13.sp,
                            color: Colors.white,
                            fontweight: FontWeight.w700),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                myText(
                                    text: 'See all ',
                                    size: 9.sp,
                                    fontweight: FontWeight.w400,
                                    color: Colors.white70),
                                SizedBox(width: 1.2.w),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 10.sp,
                                  color: Colors.white70,
                                ),
                              ],
                            ))
                      ],
                    ),
                    // SizedBox(height: 1.h),
                    Container(
                      height: 14.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cryptoList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(
                                right: 3.w, left: 1.w, bottom: 1.h, top: 1.h),
                            padding: EdgeInsets.all(15),
                            width: 45.w,
                            // height: 13.h,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          cryptoList[index]['image']),
                                    ),
                                    SizedBox(width: 2.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        myText(
                                            text: cryptoList[index]['name'],
                                            color: Colors.white,
                                            fontweight: FontWeight.w700),
                                        myText(
                                            text: 'BitCoin',
                                            color: Colors.white70,
                                            fontweight: FontWeight.w400,
                                            size: 8.sp)
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    myText(
                                        text: '\$${cryptoList[index]['price']}',
                                        color: Colors.white),
                                    Spacer(),
                                    myText(
                                        text: ' 6,21%',
                                        color: Colors.red,
                                        size: 8.sp)
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        myText(
                            text: 'Transaction',
                            size: 13.sp,
                            color: Colors.white,
                            fontweight: FontWeight.w700),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                myText(
                                    text: 'See all ',
                                    size: 9.sp,
                                    fontweight: FontWeight.w400,
                                    color: Colors.white70),
                                SizedBox(width: 1.2.w),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 10.sp,
                                  color: Colors.white70,
                                ),
                              ],
                            ))
                      ],
                    ),
                    // SizedBox(height: 1.h),
                    Container(
                      // height: 14.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        // scrollDirection: Axis.horizontal,
                        itemCount: cryptoList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 0.5.h, top: 0.5.h),
                            padding: EdgeInsets.all(15),
                            // width: 45.w,
                            // height: 13.h,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          cryptoList[index]['image']),
                                    ),
                                    SizedBox(width: 2.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        myText(
                                            text: cryptoList[index]['name'],
                                            color: Colors.white,
                                            fontweight: FontWeight.w700),
                                        myText(
                                            text: 'BitCoin',
                                            color: Colors.white70,
                                            fontweight: FontWeight.w400,
                                            size: 8.sp)
                                      ],
                                    ),
                                    // Spacer(),
                                    // myText(text: '\$24,209'),
                                    Spacer(),

                                    myText(
                                        text: ' 6,21%',
                                        color: Colors.red,
                                        size: 8.sp)
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 2.5.h),
                    Row(
                      children: [
                        myText(
                            text: 'Trending',
                            size: 13.sp,
                            color: Colors.white,
                            fontweight: FontWeight.w700),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                myText(
                                    text: 'See all ',
                                    size: 9.sp,
                                    fontweight: FontWeight.w400,
                                    color: Colors.white70),
                                SizedBox(width: 1.2.w),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 10.sp,
                                  color: Colors.white70,
                                ),
                              ],
                            ))
                      ],
                    ),
                    // SizedBox(height: 1.h),
                    Container(
                      // height: 14.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        // scrollDirection: Axis.horizontal,
                        itemCount: cryptoList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 0.5.h, top: 0.5.h),
                            padding: EdgeInsets.all(15),
                            // width: 45.w,
                            // height: 13.h,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          cryptoList[index]['image']),
                                    ),
                                    SizedBox(width: 2.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        myText(
                                            text: cryptoList[index]['name'],
                                            color: Colors.white,
                                            fontweight: FontWeight.w700),
                                        myText(
                                            text: 'BitCoin',
                                            color: Colors.white70,
                                            fontweight: FontWeight.w400,
                                            size: 8.sp)
                                      ],
                                    ),
                                    // Spacer(),
                                    // myText(text: '\$24,209'),
                                    Spacer(),
                                    myText(
                                        text: ' 6,21%',
                                        color: Colors.red,
                                        size: 8.sp)
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 2.5.h),
                    Row(
                      children: [
                        myText(
                            text: 'Market Place',
                            size: 13.sp,
                            color: Colors.white,
                            fontweight: FontWeight.w700),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                myText(
                                    text: 'See all ',
                                    size: 9.sp,
                                    fontweight: FontWeight.w400,
                                    color: Colors.white70),
                                SizedBox(width: 1.2.w),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 10.sp,
                                  color: Colors.white70,
                                ),
                              ],
                            ))
                      ],
                    ),
                    GridView.builder(
                      itemCount: cryptoMarketPlaceList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.w,
                          childAspectRatio: 1.1,
                          mainAxisSpacing: 2.h),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  myText(
                                      text: cryptoMarketPlaceList[index]
                                          ['name'],
                                      color: Colors.white),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        cryptoMarketPlaceList[index]['image']),
                                  )
                                ],
                              ),
                              SizedBox(height: 1.h),
                              myText(
                                  text:
                                      'In cryptography, ciphertext or cyphertext is the result of encryption performed on plaintext using an algorithm, called a cipher.',
                                  maxline: 2,
                                  color: Colors.white70,
                                  fontweight: FontWeight.w400,
                                  size: 8.sp,
                                  textAlignment: TextAlign.start),
                              SizedBox(height: 2.h),
                              Row(
                                children: [
                                  myText(
                                      text: 'View more',
                                      fontweight: FontWeight.w400,
                                      color: Colors.white,
                                      size: 8.sp),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 1,
                                            blurRadius: 7,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(3)),
                                    child: myText(
                                        text: 'Explore',
                                        fontweight: FontWeight.w400,
                                        color: Colors.white,
                                        size: 8.sp),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
