import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kLightPrimaryColor = Color.fromARGB(255, 1, 17, 139);
const Color kLightAccentColor = Color.fromARGB(255, 1, 148, 197);
const Color kLightTextColor = Color(0xff1F1A3D);
const Color kLightPlaceholderColor = Color(0xFFE8EAF0);
const Color kLightPlaceholderTextColor = Color(0xFFC6CAD3); //Color(0xffF5F6FA);
const Color kLightBackgroundColor = Color(0xFFD9D9D9);
const Color kLightErrorColor = Color(0xFFFF7971);

// Radius Circular
final kRadiusCircular = Radius.circular(10.r);
final kRadiusCircularHalf = Radius.circular(5.r);
final kBorderRadiusCircular = BorderRadius.circular(10.r);
final kBorderRadiusAll = BorderRadius.all(kRadiusCircular);
final kBorderRadiusAllHalf = BorderRadius.all(kRadiusCircularHalf);
final kBorderRadiusTop = BorderRadius.only(
  topLeft: kRadiusCircular,
  topRight: kRadiusCircular,
);
final kBorderRadiusBottom = BorderRadius.only(
  bottomLeft: kRadiusCircular,
  bottomRight: kRadiusCircular,
);
const kBorderSide = BorderSide(color: Colors.transparent, width: 0);

// border shape
// Input textfield decoration
final kOutlineInputBorderShape = OutlineInputBorder(
  borderRadius: kBorderRadiusCircular,
  borderSide: kBorderSide,
);
// border shape 2
// Card
final kRoundedRectangleBorderShape = RoundedRectangleBorder(
  borderRadius: kBorderRadiusAll,
  side: kBorderSide,
);
// border shape 3
const kCircleBorderShape = CircleBorder(side: kBorderSide);
// border shape 4
const kStadiumBorderShape = StadiumBorder(side: kBorderSide);

// Padding on Input textfield
final kContentPaddingVertical = EdgeInsets.symmetric(vertical: 20.h);

// Padding on Card View
final kContentPadding = REdgeInsets.all(10.0);
const kTextStyleBold = TextStyle(
  fontWeight: FontWeight.bold,
);

// Page Padding or Screen Padding
final kPagePadding = EdgeInsets.symmetric(horizontal: 20.w);
final kPageItemSpacing = SizedBox(height: 5.h);
final kPageItemSpacing1 = SizedBox(height: 10.h);
final kPageItemSpacing2 = SizedBox(height: 20.h);
final kPageItemSpacing4 = SizedBox(height: 40.h);
final kPageItemSpacing6 = SizedBox(height: 60.h);

// Padding on ElevatedButton
final kElevatedButtonPadding = EdgeInsets.symmetric(vertical: 18.h);

const kTextStyleWhiteBold = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
