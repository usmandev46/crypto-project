//
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// Widget customCachedNetworkImage(
//     {required String imageUrl,
//     BoxFit fit = BoxFit.fill,
//     BorderRadiusGeometry? borderRadius,
//     double? height,
//     double? width}) {
//   return CachedNetworkImage(
//     imageUrl: imageUrl,
//     imageBuilder: (context, imageProvider) => Container(
//       width: width ?? double.maxFinite,
//       height: height ?? 20.h,
//       decoration: BoxDecoration(
//         borderRadius: borderRadius ?? BorderRadius.circular(0),
//         image: DecorationImage(
//             image: imageProvider,
//             fit: fit,
//             colorFilter:
//                 ColorFilter.mode(Colors.transparent, BlendMode.colorBurn)),
//       ),
//     ),
//     placeholder: (context, url) => Container(
//         width: width ?? double.maxFinite,
//         height: height ?? 20.h,
//         alignment: Alignment.center,
//         child: CircularProgressIndicator()),
//     errorWidget: (context, url, error) => Container(
//         width: width ?? double.maxFinite,
//         height: height ?? 20.h,
//         alignment: Alignment.center,
//         child: Icon(Icons.error)),
//   );
// }
