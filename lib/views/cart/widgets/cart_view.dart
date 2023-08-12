import 'package:flutter/material.dart';
import 'package:shoe_app/utils/constants.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstantsColor.backgroundColor,
    );
  }
}