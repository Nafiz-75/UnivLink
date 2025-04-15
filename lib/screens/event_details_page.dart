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
  @override
  void initState() {
    super.initState();
    _event = _eventService.getEventById(widget.eventId);
  }

  void _enrollInEvent() async {
    try {
      await _eventService.enrollInEvent(widget.eventId, widget.userId);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You have successfully enrolled in the event!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to enroll in the event')));
    }
  }
