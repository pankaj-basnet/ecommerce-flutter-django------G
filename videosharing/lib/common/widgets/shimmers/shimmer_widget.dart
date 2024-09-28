// ignore_for_file: prefer_const_constructors

import 'package:videosharing/common/utils/kcolors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    required this.shimmerWidth,
    required this.shimmerHieght,
    required this.shimmerRadius,
  });

  final double shimmerWidth;
  final double shimmerHieght;
  final double shimmerRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: shimmerHieght,
      height: shimmerHieght,
      child: _buildShimmerLine(
          height: shimmerHieght, width: shimmerHieght, radius: shimmerRadius),
    );
  }

  Widget _buildShimmerLine(
      {required double height, required double width, required double radius}) {
    return Shimmer.fromColors(
        baseColor: const Color.fromARGB(255, 190, 21, 21)!,
        // baseColor: Colors.grey[300]!, //isn=
        highlightColor: const Color.fromARGB(255, 36, 30, 227).withOpacity(0.3),
        // highlightColor: Kolors.kGray.withOpacity(0.3), // isn=
        child: Container(
          height: height,
          width: width,
          // radius: radius,
          
        ));
  }
}
