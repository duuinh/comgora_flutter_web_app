import 'dart:ui';

import 'package:comgora_flutter_web_app/models/ModelProvider.dart';
import 'package:flutter/material.dart';

String categoryToString(CategoryType category) {
  switch (category) {
    case CategoryType.ALL:
      return 'All';
    case CategoryType.FOOD:
      return 'Food';
    case CategoryType.GROCERY:
      return 'Grocery';
    case CategoryType.TOOL:
      return 'Tool';
    case CategoryType.TRAVEL:
      return 'Travel';
    case CategoryType.FUN:
      return 'Fun';
    case CategoryType.EXERCISE:
      return 'Exercise';
    case CategoryType.WORK:
      return 'Work';
    case CategoryType.EDUCATION:
      return 'Education';
    case CategoryType.SPACE:
      return 'Space';
    case CategoryType.WELLNESS:
      return 'Wellness';
    case CategoryType.EVENT:
      return 'Event';
    case CategoryType.PETS:
      return 'Pets';
    case CategoryType.FINANCE:
      return 'Finance';
    case CategoryType.CLOTHING:
      return 'Clothing';
    case CategoryType.HOUSEWORK:
      return 'Housework';
    case CategoryType.ELSE:
      return 'Else';
  }
}

IconData categoryToIconData(CategoryType category) {
  switch (category) {
    case CategoryType.ALL:
      return Icons.category;
    case CategoryType.FOOD:
      return Icons.food_bank;
    case CategoryType.GROCERY:
      return Icons.badge;
    case CategoryType.TOOL:
      return Icons.construction;
    case CategoryType.TRAVEL:
      return Icons.time_to_leave_rounded;
    case CategoryType.FUN:
      return Icons.toys;
    case CategoryType.EXERCISE:
      return Icons.sports_gymnastics_rounded;
    case CategoryType.WORK:
      return Icons.work;
    case CategoryType.EDUCATION:
      return Icons.school;
    case CategoryType.SPACE:
      return Icons.home_filled;
    case CategoryType.WELLNESS:
      return Icons.spa;
    case CategoryType.EVENT:
      return Icons.event;
    case CategoryType.PETS:
      return Icons.pets;
    case CategoryType.FINANCE:
      return Icons.money;
    case CategoryType.CLOTHING:
      return Icons.checkroom;
    case CategoryType.HOUSEWORK:
      return Icons.house;
    case CategoryType.ELSE:
      return Icons.more_horiz_rounded;
  }
}
