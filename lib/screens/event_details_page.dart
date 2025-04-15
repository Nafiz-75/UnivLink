import 'package:flutter/material.dart';
import '../models/event_model.dart';
import '../services/event_service.dart';
import 'package:intl/intl.dart';

class EventDetailsPage extends StatefulWidget {
  final String eventId;
  final String userId;

  EventDetailsPage({required this.eventId, required this.userId});

  @override
  _EventDetailsPageState createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  final EventService _eventService = EventService();
  late Future<EventModel> _event;
