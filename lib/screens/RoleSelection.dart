import 'package:flutter/material.dart';
import 'package:project_one/screens/Login.dart';
import 'package:project_one/widgets/button.dart';

class RoleSelectionScreen extends StatefulWidget {
  @override
  _RoleSelectionScreenState createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  String? _selectedRole;

  void _handleRoleChange(String? value) {
    setState(() {
      _selectedRole = value;
    });
  }

  void _handleSubmit() {
    if (_selectedRole != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(selectedRole: _selectedRole!),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF7FCFCFC),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 16),
            child: Text(
              'Select Your Role',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'DM Sans',
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      'Admin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DM Sans',
                      ),
                    ),
                    leading: Radio<String>(
                      value: 'Admin',
                      groupValue: _selectedRole,
                      onChanged: _handleRoleChange,
                      activeColor: Colors.green,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'User',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DM Sans',
                      ),
                    ),
                    leading: Radio<String>(
                      value: 'User',
                      groupValue: _selectedRole,
                      onChanged: _handleRoleChange,
                      activeColor: Colors.green,
                    ),
                  ),
                  SizedBox(height: 20),
                  Button(
                    height: 50,
                    label: "Submit",
                    width: double.infinity,
                    onPressed: _selectedRole == null ? () {} : _handleSubmit,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
