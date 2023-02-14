import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("data"),
          content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,),
                SizedBox(height: 10,),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text("ok", style: TextStyle(color: Colors.blue),)
                ),
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text("Cancelar", style: TextStyle(color: Colors.red),)
                ),
            ],
          
        );
      }
      );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      context: context, 
      builder: ( context ){
          return AlertDialog(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,),
                SizedBox(height: 10,),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text("Cancelar")
                )
            ],
          );
        }
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          //onPressed: () => displayDialogAndroid( context ),
          onPressed: () => Platform.isAndroid ? displayDialogAndroid( context ) : displayDialogIOS( context ),
           
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Text('Mostrar alerta'),
          )
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }),
    );
  }
}