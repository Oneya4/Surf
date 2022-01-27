import 'package:flutter/cupertino.dart';

import '/models/instructor.dart';

class Instructors with ChangeNotifier {
  List<Instructor> get instructorList => [..._instructors];

  final List<Instructor> _instructors = [
    Instructor(
      id: 1,
      imageUrl:
          'https://static.tildacdn.com/tild6136-3130-4434-a533-383230653436/turn_wave.jpg',
      name: 'Elena Smith',
      location: 'Canada',
    ),
    Instructor(
      id: 2,
      imageUrl:
          'https://static.tildacdn.com/tild6136-3130-4434-a533-383230653436/turn_wave.jpg',
      name: 'Brad Delson',
      location: 'Triniad Island',
    ),
    Instructor(
      id: 3,
      imageUrl:
          'https://static.tildacdn.com/tild6136-3130-4434-a533-383230653436/turn_wave.jpg',
      name: 'Oneya Otieno',
      location: 'Mombasa',
    ),
  ];
}
