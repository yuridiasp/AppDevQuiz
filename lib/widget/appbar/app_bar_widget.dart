import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/widget/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    height: 161,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: "Olá,",
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                  text: " YuriDias",
                                  style: AppTextStyles.titleBold)
                            ])),
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://instagram.faju4-2.fna.fbcdn.net/v/t51.2885-19/1172004_371608313019630_1081426673_a.jpg?_nc_ht=instagram.faju4-2.fna.fbcdn.net&_nc_ohc=p8DI5uoIeMwAX-0DZoX&edm=ABfd0MgAAAAA&ccb=7-4&oh=ab8ebbe4fe903b94cfb4f3a0b4994e05&oe=60A2E622&_nc_sid=7bff83"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment(0.0, 1.0), child: ScoreCardWidget())
                ],
              ),
            ));
}
