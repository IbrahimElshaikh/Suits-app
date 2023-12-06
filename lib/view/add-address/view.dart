import 'package:flutter/material.dart';
import 'package:flutter1/core/design/app_bar.dart';
import 'package:flutter1/core/design/app_input.dart';
class AddAddressView extends StatefulWidget {
  const AddAddressView({super.key});

  @override
  State<AddAddressView> createState() => _AddAddressViewState();
}

class _AddAddressViewState extends State<AddAddressView> {
  final FormKey=GlobalKey<FormState>();
  final   titleController=TextEditingController();
  final   addressController=TextEditingController();
  final   buildingController=TextEditingController();
  final   floorController=TextEditingController();
  final   apartmentController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const myAppBar(
        text: "Add Address",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal:16 ,vertical: 36),
        child: Form(
          key: FormKey,
          child: Column(
            children: [
              AppInput(
                labelText: "Title",
                bgcolor: Colors.transparent,
                controller:titleController,
                validator:(value) {
                  return validation(value,"Title");
                },
              ),
              SizedBox(height: 32,),
              AppInput(
                labelText: "Address",
                bgcolor: Colors.transparent,
                controller:addressController,
                validator:(value) {
                  return validation(value,"Address");
                },
              ),
              SizedBox(height: 32,),
              AppInput(
                labelText: "Building No",
                bgcolor: Colors.transparent,
                controller:buildingController,
                validator:(value) {
                  return validation(value,"Bulding No");
                },
              ),
              SizedBox(height: 32,),
              AppInput(
                labelText: "Floor No",
                bgcolor: Colors.transparent,
                controller:floorController,
                validator:(value) {
                  return validation(value,"Floor No");
                },
              ),
              SizedBox(height: 32,),
              AppInput(
                labelText: "Apartment No",
                bgcolor: Colors.transparent,
                controller:apartmentController,
                validator:(value) {
                  return validation(value,"Apartment No");
                },
              ),



            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: FilledButton(onPressed: () {
            FormKey.currentState!.validate();

          }, child: Text("Save"),),
        ),
      ),

    );
  }
}
String? validation(value,String name) {
  if(value!.isEmpty){
    return"$name must be not Empty";
  }
  return null;
}


