import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';

class ProgresseIndicatorWidget extends StatelessWidget {
  final double value;
  const ProgresseIndicatorWidget({Key? key, required this.value})
      : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }
}
