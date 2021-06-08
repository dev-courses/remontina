import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:remontina/presentation/ui/app_colors.dart';

class BigCard extends StatelessWidget {
  final String title;
  final String description;
  final String? imageUrl;
  final VoidCallback? onTap;

  const BigCard({
    Key? key,
    required this.title,
    required this.description,
    this.imageUrl,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColors.boxDecorationBigCardGreen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.textBigCardWhite,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.textBigCardWhite,
                  ),
                ),
              ],
            ),
          ),
          if (imageUrl != null) SizedBox(width: 10.0),
          if (imageUrl != null)
            Image.asset(
              imageUrl!,
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
        ],
      ),
    );
  }
}
