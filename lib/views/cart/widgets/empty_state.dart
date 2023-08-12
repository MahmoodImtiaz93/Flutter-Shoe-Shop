import 'package:flutter/material.dart';
import 'package:shoe_app/animation/fade_animation.dart';
import 'package:shoe_app/theme/custom_app_theme.dart';


// When cart is empty this state will show
class EmptyState extends StatelessWidget {
  const EmptyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: SizedBox(
        width: width,
        height: height / 1.4,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeAnimation(
              delay: 0.5,
              child:
                  Text("No shoes added!", style: AppThemes.bagEmptyListTitle),
            ),
            FadeAnimation(
              delay: 0.5,
              child: Text(
                "Once you have added, come back:)",
                style: AppThemes.bagEmptyListSubTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
