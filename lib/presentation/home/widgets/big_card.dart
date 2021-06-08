import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:remontina/presentation/ui/app_colors.dart';
import 'package:remontina/presentation/ui/consts.dart';

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
    return ClipRRect(
      borderRadius: borderRadius10,
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: borderRadius10,
          color: AppColors.backgroundColorGreen,
        ),
        child: Stack(
          children: [
            _buildContent(),
            Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      padding: EdgeInsets.all(10.0),
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
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 14,
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
