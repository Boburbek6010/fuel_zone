import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImages {
  const AppImages._();

  /// ! Bobur
  // *** svg images

  static final logoSvg = SvgPicture.asset(
    'assets/images/login/logo.svg',
    height: 344,
    width: 72,
  );

  static final showIcon = SvgPicture.asset(
    'assets/icons/show.svg',
    height: 12.5,
    width: 18,
  );

  static final hideIcon = SvgPicture.asset(
    'assets/icons/hide.svg',
    height: 7,
    width: 16,
  );

  static final searchIcon = SvgPicture.asset(
    'assets/icons/search.svg',
    height: 19.5,
    width: 19.5,
  );

  static final editIcon = SvgPicture.asset(
    'assets/icons/edit.svg',
    height: 15.3,
    width: 15.3,
  );

  static final deleteIcon = SvgPicture.asset(
    'assets/icons/delete.svg',
    height: 16.2,
    width: 15,
  );



  // !!!
  // !!!
  // !!! images

  static final logoPng = Image.asset(
    'assets/images/login_icon/login.png',
    height: 344,
    width: 72,
  );

  static final logoPatent = Image.asset(
    'assets/images/login/qizcha.png',
    height: 254,
    width: 254,
    fit: BoxFit.cover,
  );


}

// extension CustomSvg on SvgPicture {
//   SvgPicture copyWith({
//     double? width,
//     double? height,
//     BoxFit? fit,
//     Color? color,
//   }) {
//     final picture = pictureProvider as ExactAssetPicture;
//     if (colorFilter != null) {
//       var colorString = '$colorFilter'.substring('$colorFilter'.indexOf('value: Color(') + 13);
//       colorString = colorString.substring(0, colorString.indexOf(')),'));
//       color ??= Color(int.parse(colorString));
//     }
//     return SvgPicture.asset(
//       picture.assetName,
//       width: width ?? this.width,
//       height: height ?? this.height,
//       fit: fit ?? this.fit,
//       color: color,
//     );
//   }
//
//   String get path => (pictureProvider as ExactAssetPicture).assetName;
// }

extension Extension on Image {
  Image copyWith({
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) =>
      Image(
        image: image,
        width: width ?? this.width,
        height: height ?? this.height,
        fit: fit ?? this.fit,
        color: color ?? this.color,
      );
}
