// import 'package:flutter/material.dart';
// //import 'location_detail.dart';
// import 'location_list.dart';
// import 'login_screen.dart';
// //import 'models/location.dart';
// import 'mocks/mock_location.dart';
// void main() {
// 	final mocklocations =  MockLocation.FetchAll();
// 	runApp(
// 		MaterialApp(
// 			//home: LocationList(mocklocations),
// 			home: LoginScreen(),
// 		),
// 	);
// }

import 'package:flutter/material.dart';
import 'location_list.dart';
import 'login_screen.dart';
import 'mocks/mock_location.dart';

// The main function is the entry point of the Flutter application.
// It initializes the app and sets the home widget.
// In this case, it sets the home widget to LoginScreen.
// The mock locations are fetched from MockLocation class.
void main() {
  final mocklocations = MockLocation.FetchAll();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Location App',
      home: LoginScreen(),
    ),
  );
}
