import 'package:flutter/material.dart';
import 'home_page.dart';
import 'my_events_page.dart';
import 'event_management_page.dart';

class DrawerNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'UnivLink',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),

