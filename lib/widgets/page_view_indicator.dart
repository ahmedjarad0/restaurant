import 'package:flutter/material.dart';
class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({
    Key? key,
    required this.isCurrentPage,
    this.marginEnd =0 ,
  }) : super(key: key);
 final bool isCurrentPage ;
 final double marginEnd ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end:marginEnd ),
      width: 18,
      height: 4,
      decoration: BoxDecoration(
        color: isCurrentPage?Colors.blue :Colors.grey,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
