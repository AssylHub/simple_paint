part of 'theme.dart';

abstract class TextStyles {
  static const TextStyle extraTitle = TextStyle(
    fontSize: 28,
    color: AppColors.white,
    fontFamily: FontFamily.pressStart,
    height: 30 / 28,
  );

  static const TextStyle mainText = TextStyle(
    fontSize: 17,
    color: AppColors.blackSl,
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w500,
    height: 24 / 17,
  );
}
