import '../models/event_model.dart';

class EventService {
  // Dummy data list (you'll replace with Firebase later)
  final List<EventModel> _events = [];

  // Get all events
  List<EventModel> getEvents() {
    return _events;
  }

  // Add event
  void addEvent(EventModel event) {
    _events.add(event);
  }

  // Get enrolled events for a user
  List<EventModel> getEnrolledEvents(String userId) {
    return _events
        .where((event) => event.enrolledUsers.contains(userId))
        .toList();
  }
