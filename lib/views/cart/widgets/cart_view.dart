import 'package:flutter/material.dart';
import 'package:shoe_app/animation/fade_animation.dart';
import 'package:shoe_app/data/dummy_data.dart';
import 'package:shoe_app/theme/custom_app_theme.dart';
import 'package:shoe_app/utils/constants.dart';
import 'package:shoe_app/views/cart/widgets/empty_state.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int lengthOfCartItems = itemsOnBag.length;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstantsColor.backgroundColor,
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: width,
            height: height,
            child: Column(
              children: [
                _cartAppBar(width: width, height: height, lengthOfCartItems: lengthOfCartItems)
              ],
            )),
      ),
    );
  }
}

class _cartAppBar extends StatelessWidget {
  const _cartAppBar({
    super.key,
    required this.width,
    required this.height,
    required this.lengthOfCartItems,
  });

  final double width;
  final double height;
  final int lengthOfCartItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height / 14,
      child: FadeAnimation(
        delay: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "My Cart",
              style: AppThemes.bagTitle,
            ),
            Text(
              "Total $lengthOfCartItems Items",
              style: AppThemes.bagTotalPrice,
            )
          ],
        ),
      ),
    );
  }
}
