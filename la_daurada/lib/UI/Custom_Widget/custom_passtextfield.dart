// import 'package:flutter/material.dart';
// import 'package:la_daurada/Size_Config/sizeconfig.dart';

// Widget CustomPasswordTextfield(String hinttext, Function onpress) {
//   bool _passwordVisible = false;
//   return TextFormField(
//     keyboardType: TextInputType.visiblePassword,
//     obscureText: !_passwordVisible,
//     decoration: InputDecoration(
//         hintText: hinttext,
//         suffixIcon: IconButton(
//             icon: Icon(
//               // Based on passwordVisible state choose the icon
//               !_passwordVisible ? Icons.visibility : Icons.visibility_off,
//               color: Color(0xff9BABC5),
//               size: SizeConfig.safeBlockVertical * 3.4,
//             ),
//             onPressed: onpress),
//         hintStyle: TextStyle(
//           fontFamily: "Poppins",
//           fontSize: SizeConfig.safeBlockVertical * 2.1,
//           color: Color(0xff000938),
//         ),
//         filled: true,
//         fillColor: Color(0xffEEF2FD),
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//                 Radius.circular(SizeConfig.safeBlockHorizontal * 2.5)),
//             borderSide: BorderSide.none)),
//   );
// }
