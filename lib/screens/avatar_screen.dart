import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ron Swanson'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child:  const CircleAvatar(
              backgroundColor: AppTheme.secondary,
              foregroundColor: Colors.white,
              child: Text('RS'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: AssetImage('./assets/swanson.jpg'),
         )
      ),
    );
  }
}