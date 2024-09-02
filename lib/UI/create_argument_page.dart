import 'package:flutter/material.dart';

import '../argument.dart';
import '../domain/mla_source_entity.dart';

class CreateArgumentPage extends StatefulWidget {
  @override
  _CreateArgumentPageState createState() => _CreateArgumentPageState();
}

class _CreateArgumentPageState extends State<CreateArgumentPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  List<MLASource> _sources = [];

  // Method to handle the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  // Method to handle the submission of the argument
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Argument newArgument = Argument(
        text: _textController.text,
        timeStamp: _selectedDate,
        argumentId:
            DateTime.now().toString(), // Replace with actual ID generation
        userId: _userIdController.text,
        sources: _sources,
      );

      // Print statement for debugging
      print(
          'Argument Created: ${newArgument.text}, Time: ${newArgument.timeStamp}');

      // Handle further processing like saving the argument or navigating
    }
  }

  // UI for adding MLA sources (This can be a new screen or a modal)
  void _addSource() {
    // Implementation for adding a source to the _sources list
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Argument'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _textController,
                decoration: InputDecoration(labelText: 'Argument Text'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the argument text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _userIdController,
                decoration: InputDecoration(labelText: 'User ID'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the User ID';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text("Date: ${_selectedDate.toLocal()}".split(' ')[0]),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: Text('Select date'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _addSource,
                child: Text('Add MLA Source'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit Argument'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
