import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/providers/instructors.dart';

class InstructorTile extends StatelessWidget {
  const InstructorTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Instructor', style: TextStyle(fontSize: 20)),
            TextButton(
              child: const Text('See all'),
              onPressed: () {},
              style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 81,
          child: Consumer<Instructors>(
            builder: (ctx, instructors, _) => ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: instructors.instructorList.length,
              separatorBuilder: (ctx, index) => const SizedBox(width: 10),
              itemBuilder: (ctx, index) => Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SizedBox(
                  width: 250,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: CircleAvatar(
                      foregroundImage: NetworkImage(
                          instructors.instructorList[index].imageUrl),
                      radius: 50,
                    ),
                    title: Text(instructors.instructorList[index].name),
                    subtitle: Text(instructors.instructorList[index].location),
                    onTap: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
