import 'package:flutter/material.dart';

class RSVPButtons extends StatelessWidget {
  final VoidCallback onGoing;
  final VoidCallback onInterested;
  final bool isGoing;
  final bool isInterested;

  const RSVPButtons({
    super.key,
    required this.onGoing,
    required this.onInterested,
    required this.isGoing,
    required this.isInterested,
  });
