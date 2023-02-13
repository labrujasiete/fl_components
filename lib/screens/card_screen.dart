import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox( height: 10, ),
          CustomCardType2(name: 'hello', imageUrl: 'https://www.westend61.de/images/0000199595pw/canada-view-of-lake-in-tundra-landscape-at-tombstone-territorial-park-ESF000198.jpg',),

        ]
      ),
    );
  }
}

