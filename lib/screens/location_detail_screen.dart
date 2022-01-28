import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/providers/destinations.dart';

class LocationDetailScreen extends StatelessWidget {
  static const routeName = 'location-detail';

  const LocationDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;
    final locationId = ModalRoute.of(context)!.settings.arguments.toString();
    final location = Provider.of<Destinations>(context)
        .destinationList
        .firstWhere((destination) => destination.id == locationId);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              height: dSize.height * .6,
              width: dSize.width,
              child: Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(location.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _iconBorder(
                      radius: 52,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 28,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    _iconBorder(
                      radius: 52,
                      child: IconButton(
                        icon: const Icon(
                          Icons.bookmark,
                          color: Colors.white,
                          size: 28,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: dSize.height * .5,
              width: dSize.width,
              height: dSize.height * .45,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).canvasColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      location.name,
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          icon: const Icon(Icons.place, size: 19),
                          label: Text(location.location),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                          ),
                        ),
                        TextButton.icon(
                          icon: const Icon(Icons.star_rate, size: 19),
                          label: const Text('4.8 (2.6k reviews)'),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                          ),
                        ),
                      ],
                    ),
                    Text(location.description),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          icon: const Icon(Icons.cloud_circle),
                          label: const Text('40 min free ride'),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            primary: Colors.black,
                          ),
                        ),
                        TextButton.icon(
                          icon: const Icon(Icons.stacked_line_chart_rounded),
                          label: Text('${location.waterFlow} water flow'),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            primary: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Surfers Nearby',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        _surfersNearby(),
                        _surfersNearby(),
                        _surfersNearby(),
                        IconButton(
                          icon: _iconBorder(
                            radius: 40,
                            child: const Icon(Icons.arrow_right_alt_outlined),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: '\$${location.cost.toInt()}',
                            style: const TextStyle(fontSize: 21),
                            children: const [
                              TextSpan(
                                text: ' / 20 hrs',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          child: const Text('Book Now'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _iconBorder({required Widget child, required double radius}) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: const Color(0xFFE0E0E0),
        ),
      ),
      child: child,
    );
  }

  _surfersNearby() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          'https://static.tildacdn.com/tild6136-3130-4434-a533-383230653436/turn_wave.jpg',
          height: 47,
          width: 47,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
