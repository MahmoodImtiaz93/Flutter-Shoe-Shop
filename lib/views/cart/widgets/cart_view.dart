import 'package:flutter/material.dart';
import 'package:shoe_app/utils/constants.dart';
import 'package:shoe_app/views/cart/widgets/empty_state.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppConstantsColor.backgroundColor,
      body: SizedBox(
        width: width,
        height: height,
        child: const EmptyState(),
      ),
    );
  }
}
