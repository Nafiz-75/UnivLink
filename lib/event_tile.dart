import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  final String title;
  final String date;
  final String location;
  final VoidCallback onTap;
  final Widget? trailing;

  const EventTile({
    Key? key,
    required this.title,
    required this.date,
    required this.location,
    required this.onTap,
    this.trailing,
  }) : super(key: key);
