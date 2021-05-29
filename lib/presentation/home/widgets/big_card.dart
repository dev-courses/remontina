import 'dart:ui';

import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  final String title;
  final String description;
  final String? imageUrl;

  const BigCard({
    Key? key,
    required this.title,
    required this.description,
    this.imageUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        border: Border.all(color: Colors.blue, width: 2.0),
        borderRadius: BorderRadius.circular(12),
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
                      fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      fontStyle: FontStyle.normal),
                ),
              ],
            ),
          ),
          if (imageUrl != null)
            Image.asset(
              imageUrl!,
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            )
        ],
      ),
    );
  }
}
