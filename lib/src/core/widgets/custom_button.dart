import 'package:flutter/material.dart';
import 'package:simple_paint/src/core/theme/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.hasGradient = false,
    this.textColor = AppColors.blackSl,
  });

  final VoidCallback onTap;
  final String text;
  final bool hasGradient;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          gradient:
              hasGradient
                  ? LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.primary, AppColors.secondary],
                  )
                  : null,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.mainText.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
