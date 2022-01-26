import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf/providers/destinations.dart';

class SurfTile extends StatelessWidget {
  const SurfTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return SizedBox(
      height: dSize.height * .35,
      child: Consumer<Destinations>(builder: (context, destinations, _) {
        return ListView.separated(
          itemCount: destinations.destinationList.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (ctx, index) => const SizedBox(width: 25),
          itemBuilder: (ctx, index) => Container(
            width: dSize.width * .53,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    NetworkImage(destinations.destinationList[index].imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destinations.destinationList[index].name,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton.icon(
                  icon: const Icon(Icons.place, size: 19),
                  label: Text(destinations.destinationList[index].location),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    primary: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
