import 'package:flutter/material.dart';
import 'package:surf/widgets/surf_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.fromLTRB(15, 25, 0, 15),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notes_sharp),
                ),
                const CircleAvatar(),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, size: 20),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: const InputDecoration.collapsed(
                            hintText: 'Location, surfer',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Surfing Beach',
                  style: TextStyle(fontSize: 23, color: Colors.blueAccent),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Popular', style: TextStyle(color: Colors.teal)),
                    Text('Malibu'),
                    Text('Oahu'),
                    Text('Ericeira'),
                  ],
                ),
              ],
            ),
            const SurfTile(),
          ],
        ),
      ),
    );
  }
}
