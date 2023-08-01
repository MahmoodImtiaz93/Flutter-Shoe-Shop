import 'package:flutter/material.dart';
import 'package:shoe_app/utils/constants.dart';

class AppThemes {
  AppThemes._();

  static const TextStyle _baseTextStyle = TextStyle(
    color: AppConstantsColor.lightTextColor,
  );

  /// Home
  static   TextStyle homeAppBar = _baseTextStyle.copyWith(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppConstantsColor.darkTextColor,
  );
  static   TextStyle homeProductName = _baseTextStyle.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static   TextStyle homeProductModel = _baseTextStyle.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );
  static   TextStyle homeProductPrice = _baseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static const TextStyle homeMoreText = TextStyle(
    fontSize: 22,
    color: AppConstantsColor.darkTextColor,
    fontWeight: FontWeight.bold,
  );
  static   TextStyle homeGridNewText = _baseTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static const TextStyle homeGridNameAndModel = TextStyle(
    color: AppConstantsColor.darkTextColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle homeGridPrice = TextStyle(
    color: AppConstantsColor.darkTextColor,
    fontWeight: FontWeight.bold,
  );

  /// Details
  static   TextStyle detailsAppBar = _baseTextStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );
  static const TextStyle detailsMoreText = TextStyle(
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    height: 1,
  );
  static const TextStyle detailsProductPrice = TextStyle(
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    height: 1,
  );
  static   TextStyle detailsProductDescriptions = TextStyle(
    color: Colors.grey[600],
  );

  /// Bag
  static const TextStyle bagEmptyListTitle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle bagEmptyListSubTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle bagTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 35,
  );
  static const TextStyle bagTotal = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 35,
  );
  static   TextStyle bagProductModel = _baseTextStyle.copyWith(
    fontSize: 17,
    color: AppConstantsColor.darkTextColor,
  );
  static const TextStyle bagProductPrice = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppConstantsColor.darkTextColor,
  );
  static const TextStyle bagProductNumOfShoe = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle bagTotalPrice = TextStyle(
    color: AppConstantsColor.darkTextColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const TextStyle bagSumOfItemOnBag = TextStyle(
    color: AppConstantsColor.darkTextColor,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  /// Profile
  static const TextStyle profileAppBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppConstantsColor.darkTextColor,
  );
  static const TextStyle profileRepeatedListTileTitle = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppConstantsColor.darkTextColor,
    fontSize: 18,
  );
  static const TextStyle profileDevName = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
  );
}

class HomeThemes {
  static const TextStyle homeGridNewText = TextStyle(
    color: AppConstantsColor.lightTextColor,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static const TextStyle homeGridNameAndModel = TextStyle(
    color: AppConstantsColor.darkTextColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle homeGridPrice = TextStyle(
    color: AppConstantsColor.darkTextColor,
    fontWeight: FontWeight.bold,
  );
}

class DetailsThemes {
  static const TextStyle detailsMoreText = TextStyle(
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    height: 1,
  );
  static const TextStyle detailsProductPrice = TextStyle(
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    height: 1,
  );
  static TextStyle detailsProductDescriptions = TextStyle(
    color: Colors.grey[600],
  );
}

class BagThemes {
  static const TextStyle bagEmptyListTitle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle bagEmptyListSubTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle bagTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 35,
  );
  static const TextStyle bagTotal = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 35,
  );
  static const TextStyle bagProductModel = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: AppConstantsColor.darkTextColor,
  );
  static const TextStyle bagProductPrice = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppConstantsColor.darkTextColor,
  );
  static const TextStyle bagProductNumOfShoe = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle bagTotalPrice = TextStyle(
    color: AppConstantsColor.darkTextColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const TextStyle bagSumOfItemOnBag = TextStyle(
    color: AppConstantsColor.darkTextColor,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
}

class ProfileThemes {
  static const TextStyle profileAppBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppConstantsColor.darkTextColor,
  );
  static const TextStyle profileRepeatedListTileTitle = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppConstantsColor.darkTextColor,
    fontSize: 18,
  );
  static const TextStyle profileDevName = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
  );
}