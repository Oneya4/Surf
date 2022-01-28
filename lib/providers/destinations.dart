import 'package:flutter/cupertino.dart';

import '/models/destination.dart';

class Destinations with ChangeNotifier {
  List<Destination> get destinationList => [..._destinationList];

  final List<Destination> _destinationList = [
    Destination(
      id: 'D1',
      imageUrl:
          'http://blog.laterooms.com/wp-content/uploads/2016/08/Surfing.jpg',
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
          'https://live.staticflickr.com/935/41894640900_3bcf9901c5_b.jpg',
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
          'https://i.pinimg.com/originals/88/30/cc/8830cc98509d18a7f749f350b42451b5.jpg',
      name: 'Sandy Beach',
      location: 'Bikini Bottom',
      description:
          'The Bukit Peninsula ia at the southern end of the island of Bali, Indonesia. It is traditionally considered to be the entire area south of Jimbaran beach. Unlike the bulk of Bali, it features a dry, arid an stony landscape',
      waterFlow: '15.8ft',
      cost: 1065,
    ),
  ];
}
