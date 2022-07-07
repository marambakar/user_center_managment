import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_size.dart';
import 'constants.dart';

class AppTextStyle {
  final headLine = const TextStyle(
      fontSize: AppTextSize.subBiger,
      color: AppColors.grey,
      fontFamily: "Semi Bold",
      fontWeight: FontWeight.w500

  );

  final fontDecoration = const TextStyle(
      fontSize: AppTextSize.body1,
      fontFamily: "Semi Bold"

  );
  final label = const TextStyle(
      color: AppColors.grey,
      fontWeight: FontWeight.w600,
      fontFamily: "Semi Bold"

  );
  final link = const TextStyle(
      decoration: TextDecoration.underline,
      color: AppColors.indigo,
      fontSize: AppTextSize.subtitle3

  );
  final greyLabel = const TextStyle(
      color: AppColors.grayLabel,
      fontSize: AppTextSize.subtitle3,
      fontWeight: FontWeight.w600


  );
  final sellBuy = const TextStyle(
      color: AppColors.grayText,
      fontSize: AppTextSize.subBig,
      fontWeight: FontWeight.w600


  );
  final sentimentHeader = const TextStyle(
      color: AppColors.black,
      fontSize: AppTextSize.subLarge,
      fontWeight: FontWeight.w600


  );

}

AppTextStyle appTextStyle = AppTextStyle();