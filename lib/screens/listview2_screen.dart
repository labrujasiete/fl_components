import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  final options = const['megaman', 'metal gear', 'super smash', 'final fantasy'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.indigo),
          onTap: () => {},
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        ),
    );
  }
}