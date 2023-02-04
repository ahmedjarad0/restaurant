import 'package:flutter/material.dart';

class Faqs {
  final String question;
  final String answer;
  bool isExpanded;

  Faqs({
  required this.question,
  required this.answer,
    this.isExpanded= false,
  });
}
