import 'package:flutter/material.dart';
import 'package:la_daurada/Size_Config/sizeconfig.dart';


  Widget CustomButton(BuildContext context,Widget child,Function ontap) {
    return Container(
      height: SizeConfig.safeBlockVertical * 7,
      width: SizeConfig.screenWidth,
      child: FractionallySizedBox(
        heightFactor: 0.9,
        widthFactor: 0.9,
        child: Container(
            decoration: BoxDecoration(
                color: Color(0xff6B75FF),
                borderRadius: BorderRadius.all(Radius.circular(
                    SizeConfig.safeBlockHorizontal * 2.5))),
            child: Material(
              color: Color(0xff6B75FF),
              borderRadius: BorderRadius.all(Radius.circular(
                  SizeConfig.safeBlockHorizontal * 2.5)),
              child: InkWell(
                splashColor: Colors.grey,
                borderRadius: BorderRadius.circular(
                    SizeConfig.safeBlockVertical * 2.5),
                onTap:ontap,
                child: child,
              ),
            )),
      ),
    );
  }