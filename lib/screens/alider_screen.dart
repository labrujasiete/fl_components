import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider & Checks"),
      ),
      body: Center(
         child: Column(
          children: [
            
            Slider.adaptive(
              min: 0,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue, 
              onChanged: _sliderEnabled ? (value) {
                _sliderValue = value;
                setState(() {
                  
                });
              } : null,
              ),


              CheckboxListTile(
                title: const Text('Deshabilitar boton'),
                activeColor: AppTheme.primary,
                value: _sliderEnabled, 
                onChanged: (value) {
                  _sliderEnabled = value!;
                  setState(() {
                    
                  });
                },
                ),


                SwitchListTile(
                  title: const Text('Deshabilitar boton'),
                  value: _sliderEnabled, 
                  activeColor: AppTheme.primary,
                  onChanged: (value) {
                    _sliderEnabled = value;
                    setState(() {
                      
                    });
                  },
                ),

              Image(
                image: const AssetImage('./assets/swanson.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
                ),

          ],
         ),
      ),
    );
  }
}