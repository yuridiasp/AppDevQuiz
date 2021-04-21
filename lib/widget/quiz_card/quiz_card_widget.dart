import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widget/progresse_indicator/progresse_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.border),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(
            height: 19,
          ),
          Text(
            "Gerencimento de Estado",
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1, child: Text("3 de 10", style: AppTextStyles.body11)),
              Expanded(
                flex: 2,
                child: ProgresseIndicatorWidget(
                  value: 0.3,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
