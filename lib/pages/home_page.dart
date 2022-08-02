import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_management_system/providers/dummy_data.dart';
import 'package:student_management_system/widgets/course_detail_card.dart';
import '../utils/constants.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
            child: Stack(
              children: [
                // Positioned(
                //   top: 0,
                //   left: 0,
                //   right: 0,
                //   child: SvgPicture.asset(
                //     FilePath.homeTopBg(context),
                //     fit: BoxFit.fill,
                //   ),
                // ),
                Positioned(
                  top: 30.h,
                  left: 12.w,
                  right: 12.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () =>
                                _scaffoldKey.currentState!.openDrawer(),
                            icon: Icon(
                              Icons.menu,
                              size: 30.w,
                              color: kLightTextColor,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: Text(
                                  'Sarmad Rehan',
                                  style: Theme.of(context).textTheme.headline3!,
                                ),
                              ),
                              Text(
                                'Student',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kLightTextColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Class',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: kLightTextColor,
                                    ),
                          ),
                          Text(
                            'VII',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: kLightTextColor,
                                    ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Courses',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: kLightTextColor,
                                    ),
                          ),
                          Text(
                            '5',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: kLightTextColor,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Courses',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 140.h,
            child: Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: courseDetails.length,
                itemBuilder: (context, index) => CourseDetailCard(
                  coursesDetail: courseDetails[index],
                ),
              ),
            ),
          ),
          kPageItemSpacing2,
          Text(
            'Courses Result',
            style: Theme.of(context).textTheme.headline3,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: false,
              // scrollDirection: Axis.horizontal,
              itemCount: courseDetails.length,
              itemBuilder: (context, index) => CourseDetailCard(
                coursesDetail: courseDetails[index],
              ),
            ),
          ),
          kPageItemSpacing2,
          // Expanded(
          //   child: ListView.builder(
          //     padding: EdgeInsets.zero,
          //     itemCount: courses.length,
          //     itemBuilder: (context, index) => CourseCard(
          //       course: courses[index],
          //     ),
          //   ),
        ],
      ),
      // );
      // } else {
      //   return const Center(
      //     child: Text('Please Login to Continue'),
      //   );
      // }
      // }
      // return const Center(child: CircularProgressIndicator());
      //   },
      // ),
    );
  }
}
