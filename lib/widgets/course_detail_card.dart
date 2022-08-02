import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/course.dart';
import '../utils/constants.dart';

class CourseDetailCard extends StatelessWidget {
  final Course coursesDetail;
  const CourseDetailCard({
    Key? key,
    required this.coursesDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.hardEdge,
      shape: kRoundedRectangleBorderShape,
      elevation: 4,
      margin: REdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(14.h),
            child: Center(
              child: Padding(
                padding: REdgeInsets.all(5.0),
                child: Text(
                  coursesDetail.title,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: kPagePadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Marks",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: kLightTextColor,
                      ),
                ),
                Text(
                  coursesDetail.marks,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: kLightTextColor,
                      ),
                ),
              ],
            ),
          ),
          kPageItemSpacing1,
          Padding(
            padding: kPagePadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grade",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: kLightTextColor,
                      ),
                ),
                Text(
                  coursesDetail.grade,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: kLightTextColor,
                      ),
                ),
              ],
            ),
          ),
          kPageItemSpacing2,
        ],
      ),
    );
  }
}
