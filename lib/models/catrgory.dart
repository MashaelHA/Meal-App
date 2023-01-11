import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF1E1C66);
const kPrimaryLightColor = Color(0xFFF2F2F2);

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({
    required this.id,
    required this.title,
    this.color = kPrimaryColor,
  });
}