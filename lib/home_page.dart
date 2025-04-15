import 'package:flutter/material.dart';
import 'drawer_navigation.dart';
import 'package:univlink/models/models/event_model.dart';
import 'package:univlink/data/saved_events_data.dart';

class HomePage extends StatelessWidget {
  final List<EventModel> events = [
    EventModel(
      id: '1',
      title: 'Tech Fest 2025',
      description: 'Join us!',
      location: 'DIU Auditorium',
      date: DateTime(2025, 4, 20),
      organizer: 'Tech Club',
      isEnrollmentEnabled: true,
      goingUsers: [],
      interestedUsers: [],
      enrolledUsers: [],
    ),
    EventModel(
      id: '2',
      title: 'Art Exhibition',
      description: 'Art from DIU students.',
      location: 'Gallery Hall',
      date: DateTime(2025, 4, 25),
      organizer: 'Art Club',
      isEnrollmentEnabled: false,
      goingUsers: [],
      interestedUsers: [],
      enrolledUsers: [],
    ),
  ];