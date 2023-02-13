

import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const ListTile(
              title: Text('Soy un titulo'),
              leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
              subtitle: Text('Aliquip quis id do ut enim anim magna ipsum aliquip. Consequat ullamco qui sunt eu mollit sint consequat ullamco labore commodo voluptate ut sint. Quis esse ut anim nisi labore laborum elit aliquip Lorem anim et nisi do.'),
            ),
            Padding(
              padding: const EdgeInsets.only( right: 7 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => {}, 
                    child: const Text("Cancel"),
                    
                    ),
                  TextButton(
                    onPressed: () => {}, 
                    child: const Text("ok"),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}