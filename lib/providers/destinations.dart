import 'package:flutter/cupertino.dart';

import '/models/destination.dart';

class Destinations with ChangeNotifier {
  List<Destination> get destinationList => [..._destinationList];

  final List<Destination> _destinationList = [
    Destination(
      id: 'D1',
      imageUrl:
          'https://static.tildacdn.com/tild6136-3130-4434-a533-383230653436/turn_wave.jpg',
      name: 'Gold Coast',
      location: 'Australia',
      description:
          'The Bukit Peninsula ia at the southern end of the island of Bali, Indonesia. It is traditionally considered to be the entire area south of Jimbaran beach. Unlike the bulk of Bali, it features a dry, arid an stony landscape',
      waterFlow: '10.8ft',
      cost: 1465,
    ),
    Destination(
      id: 'D2',
      imageUrl:
          'https://static.tildacdn.com/tild6136-3130-4434-a533-383230653436/turn_wave.jpg',
      name: 'Bukit Peninsula',
      location: 'Bali, Indonesia',
      description:
          'The Bukit Peninsula ia at the southern end of the island of Bali, Indonesia. It is traditionally considered to be the entire area south of Jimbaran beach. Unlike the bulk of Bali, it features a dry, arid an stony landscape',
      waterFlow: '12.8ft',
      cost: 1065,
    ),
    Destination(
      id: 'D3',
      imageUrl:
          'https://static.tildacdn.com/tild6136-3130-4434-a533-383230653436/turn_wave.jpg',
      name: 'Sandy Beach',
      location: 'Bikini Bottom',
      description:
          'The Bukit Peninsula ia at the southern end of the island of Bali, Indonesia. It is traditionally considered to be the entire area south of Jimbaran beach. Unlike the bulk of Bali, it features a dry, arid an stony landscape',
      waterFlow: '12.8ft',
      cost: 1065,
    ),
  ];
}
