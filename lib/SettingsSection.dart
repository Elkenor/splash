import 'package:flutter/material.dart';

class SettingsSection extends StatefulWidget {
  @override
  _SettingsSection createState() => _SettingsSection();
}
class _SettingsSection extends State<SettingsSection> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _phone = '';
  String _address= '';
  String _mail='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {return 'Please enter your name';}
                  return null;
                },
                onSaved: (value) => _name = value!,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {return 'Please enter your phone number';}
                  return null;
                },
                onSaved: (value) => _phone = value!,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {return 'Please enter your address';}
                  return null;
                },
                onSaved: (value) => _address = value!,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {return 'Please enter your email';}
                  return null;
                },
                onSaved: (value) => _mail = value!,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {_formKey.currentState!.save();
                  // Save the form data here
                  print('Name: $_name, phone: $_phone, address: $_address, email: $_mail ');
                  }
                },
                child: Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}