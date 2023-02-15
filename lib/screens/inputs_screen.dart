import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Ron',
      'last_name': 'Swanson',
      'email': 'Ron@google.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y Forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre de usuario', formProperty: 'first_name', formValues: formValues, ),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'E-Mail', hintText: 'Correo electronico de usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Password', hintText: 'Contraseña de usuario', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField(
                  items: const<DropdownMenuItem>[
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ], 
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
          
                ElevatedButton(
                  onPressed: () {

                    FocusManager.instance.primaryFocus?.unfocus();
                    

                    if ( !myFormKey.currentState!.validate() ){
                    
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);

                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  )
                )
          
          
              ],
            ),
          ),
          ),
      ),
    );
  }
}

