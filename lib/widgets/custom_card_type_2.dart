import 'package:flutter/material.dart';



class CustomCardType2 extends StatelessWidget {
  
  final String imageUrl;
  final String? name;
  
  const CustomCardType2({
    super.key, 
    required this.imageUrl, 
    this.name
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 50,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage( imageUrl ),
            placeholder: const AssetImage('./assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 200),
            ),

            if ( name != null )
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text( name ?? 'No Title'),
              )

        ],
      ),
    );
  }
}