// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction() async {
  // I need to split and save the  display_name  in to first name and last name
// Assuming that the display_name is a string with the format "First Last"
  String displayName = "John Doe";

  // Split the display_name into first and last name
  List<String> nameList = displayName.split(" ");
  String firstName = nameList[0];
  String lastName = nameList[1];

  // Save the first and last name to variables or database
  String savedFirstName = firstName;
  String savedLastName = lastName;

  // Return a success message
  return "First name: $savedFirstName, Last name: $savedLastName saved successfully.";
}
