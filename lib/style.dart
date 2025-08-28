import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF1E88E5); // blue
  static const Color secondary = Color(0xFF757575); // grey
  static const Color background = Color(0xFFF5F5F5); // light grey
  static const Color card = Colors.white;
  static const Color error = Colors.redAccent;
  static const Color textPrimary = Colors.black87;
  static const Color textSecondary = Colors.black54;
  static const Color surface = Colors.white;
}

class AppSpacing {
  static const double xSmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double xLarge = 32.0;
  static const double xxLarge = 48.0;
}

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(221, 234, 5, 5),
  );

  static const TextStyle subHeading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: AppColors.textPrimary,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle title = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle optionTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle newsTitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle newsSubtitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle quickActionStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
}

class AppStyles {
  static const Color backgroundColor = AppColors.background;

  static const TextStyle headingStyle = AppTextStyles.heading;
  static const TextStyle subHeadingStyle = AppTextStyles.subHeading;
  static const TextStyle titleStyle = AppTextStyles.title;
  static const TextStyle optionTextStyle = AppTextStyles.optionTextStyle;
  static const TextStyle buttonTextStyle = AppTextStyles.buttonText;
  static const TextStyle newsTitleStyle = AppTextStyles.newsTitleStyle;
  static const TextStyle newsSubtitleStyle = AppTextStyles.newsSubtitleStyle;
  static const TextStyle quickActionStyle = AppTextStyles.quickActionStyle;

  static final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    padding: const EdgeInsets.symmetric(
      vertical: AppSpacing.small,
      horizontal: AppSpacing.medium,
    ),
  );
}
