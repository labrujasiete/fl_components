import 'package:flutter/material.dart';



class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      child: Column(
        children: const[
          FadeInImage(
            image: NetworkImage('https://www.westend61.de/images/0000199595pw/canada-view-of-lake-in-tundra-landscape-at-tombstone-territorial-park-ESF000198.jpg'),
            placeholder: AssetImage('./assets/jar-loading.gif'),
            )
        ],
      ),
    );
  }
}