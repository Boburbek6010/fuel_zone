import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuel_zone/src/core/styles/colors.dart';

class AppImages {
  const AppImages._();

  static final logoSvg = SvgPicture.asset(
    'assets/images/login/logo.svg',
    height: 344,
    width: 72,
  );





  // !!! images

  static final profileProfile = SvgPicture.asset(
    'assets/icons/profile_profile.svg',
    height: 40,
    width: 32,
    fit: BoxFit.cover,
  );

  static final profileEdit = SvgPicture.asset(
    'assets/icons/profile_edit.svg',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );

  static final profileAccount = SvgPicture.asset(
    'assets/icons/profile_account.svg',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );

  static final profileHistoryData = SvgPicture.asset(
    'assets/icons/profile_history_data.svg',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );

  static final profileCheck = SvgPicture.asset(
    'assets/icons/profile_check.svg',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );

  static final profileGift = SvgPicture.asset(
    'assets/icons/profile_gift.svg',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );

  static final profileLogOut = SvgPicture.asset(
    'assets/icons/profile_log_out.svg',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );

  static final profileNotification = SvgPicture.asset(
    'assets/icons/profile_notification.svg',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );

  static final profileSaved = SvgPicture.asset(
    'assets/icons/profile_saved.svg',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );



  static final barMap = SvgPicture.asset(
    'assets/icons/bottom_navigation_bar/bar_map.svg',
    height: 28,
    width: 28,
  );

  static final barMap2 = SvgPicture.asset(
    'assets/icons/bottom_navigation_bar/bar_map.svg',
    height: 28,
    width: 28,
    color: AppColors.white,
  );

  static final barScan = SvgPicture.asset(
    'assets/icons/bottom_navigation_bar/bar_scan.svg',
    height: 29,
    width: 29,
    fit: BoxFit.cover,
  );

  static final barScan2 = SvgPicture.asset(
    'assets/icons/bottom_navigation_bar/bar_scan.svg',
    height: 29,
    width: 29,
    fit: BoxFit.cover,
    color: AppColors.white,
  );

  static final barSearch = SvgPicture.asset(
    'assets/icons/bottom_navigation_bar/bar_search.svg',
    height: 21,
    width: 21,
  );

  static final barSearch2 = SvgPicture.asset(
    'assets/icons/bottom_navigation_bar/bar_search.svg',
    height: 25,
    width: 25,
    color: AppColors.black,
    fit: BoxFit.cover,
  );

  static final barUser = SvgPicture.asset(
    'assets/icons/bottom_navigation_bar/bar_user.svg',
    height: 25,
    width: 25,
    fit: BoxFit.cover,
  );

  static final barUser2 = SvgPicture.asset(
    'assets/icons/bottom_navigation_bar/bar_user.svg',
    height: 21,
    width: 18,
    color: AppColors.white,
    fit: BoxFit.cover,
  );

  static final search = SvgPicture.asset(
    'assets/icons/search_icon.svg',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );

  static final columnIcon = SvgPicture.asset(
    'assets/icons/column_bar_icon.svg',
    height: 14,
    width: 25,
    fit: BoxFit.cover,
  );

  static final star = SvgPicture.asset(
    'assets/icons/star_icon.svg',
    height: 15,
    width: 15,
    fit: BoxFit.cover,
  );

  static final carIcon = SvgPicture.asset(
    'assets/icons/car_icon.svg',
    height: 15,
    width: 15,
    fit: BoxFit.cover,
  );


  static final iruglik = Image.asset(
    'assets/icons/bottom_navigation_bar/bar_user.svg',
    height: 21,
    width: 18,
    fit: BoxFit.cover,
  );

  static final sendMap = Image.asset(
    'assets/images/send_map.png',
    height: 20,
    width: 20,
    fit: BoxFit.cover,
  );

  static final zone1 = Image.asset(
    'assets/images/fuel_image_1.png',
    height: 180,
    width: double.infinity,
    fit: BoxFit.cover,
  );

  static final zone2 = Image.asset(
    'assets/images/fuel_image_2.png',
    height: 180,
    width: 363,
    fit: BoxFit.cover,
  );

  static final zone3 = Image.asset(
    'assets/images/fuel_image_3.png',
    height: 180,
    width: 363,
    fit: BoxFit.cover,
  );

  static final call = Image.asset(
    'assets/images/call.png',
    height: 22,
    width: 22,
  );

}

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
