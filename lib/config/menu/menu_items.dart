import 'package:flutter/material.dart' show IconData;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}
