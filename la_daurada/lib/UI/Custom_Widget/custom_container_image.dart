import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';

Widget CustomContainerImage(String url) {
  return AspectRatio(
    aspectRatio: 2.5,
    child: Padding(
      padding: EdgeInsets.only(
        left:SizeConfig.safeBlockHorizontal * 1.5,
        right:SizeConfig.safeBlockHorizontal * 1.5
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(SizeConfig.safeBlockHorizontal * 2.5))),
        child: ClipRRect(
            borderRadius: BorderRadius.all(
                Radius.circular(SizeConfig.safeBlockHorizontal * 2.5)),
            child: Image.asset(
              url,
              fit: BoxFit.cover,
            )),
      ),
    ),
  );
}