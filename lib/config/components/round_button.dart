import 'package:bloc_project/config/components/appColors.dart';

import 'package:flutter/material.dart';
class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const RoundButton({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        color: AppColors.buttonColor,
        height: 40,
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}