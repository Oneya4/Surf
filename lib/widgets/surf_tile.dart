import 'package:flutter/material.dart';

class SurfTile extends StatelessWidget {
  const SurfTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return SizedBox(
      height: dSize.height * .35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (ctx, index) => const SizedBox(width: 10),
        itemCount: 2,
        itemBuilder: (ctx, index) => Container(
          width: dSize.width * .48,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
