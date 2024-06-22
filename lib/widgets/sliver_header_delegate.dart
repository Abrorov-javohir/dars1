import 'package:flutter/material.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double maxHeight;
  final double minHeight;
  SliverHeaderDelegate({
    required this.child,
    required this.maxHeight,
    required this.minHeight,
  });
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => maxHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    if (oldDelegate.maxHeight != maxHeight ||
        oldDelegate.minHeight != minHeight ||
        oldDelegate.child != child) {
      return true;
    } else {
      return false;
    }
  }
}
