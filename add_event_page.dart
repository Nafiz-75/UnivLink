import 'package:flutter/material.dart';
import '../models/event_model.dart';

class AddEventPage extends StatefulWidget {
  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _categoryController = TextEditingController();
  final _imageController = TextEditingController();  // For asset image path

  final List<String> _categories = ["Music", "Tech", "Art", "Food", "Charity"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Event'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Event Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Event Description'),
              maxLines: 3,
            ),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(labelText: 'Date (DD/MM/YYYY)'),
            ),
            TextField(
              controller: _timeController,
              decoration: InputDecoration(labelText: 'Time (HH:MM AM/PM)'),
            ),
            DropdownButton<String>(
              value: _categoryController.text.isEmpty ? null : _categoryController.text,
              hint: Text('Select Category'),
              items: _categories.map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  _categoryController.text = value!;
                });
              },
            ),
            TextField(
              controller: _imageController,
              decoration: InputDecoration(labelText: 'Image (Asset Path)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newEvent = Event(
                  title: _titleController.text,
                  description: _descriptionController.text,
                  date: _dateController.text,
                  time: _timeController.text,
                  category: _categoryController.text,
                  imageAsset: _imageController.text,
                );

                Navigator.pop(context, newEvent);  // Return the new event
              },
              child: Text('Save Event',
              style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }
}
