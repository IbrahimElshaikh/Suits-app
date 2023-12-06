import 'package:flutter/material.dart';
class AppInput extends StatefulWidget {
  final String labelText;
  final String? prefixIcon ;
  final bool isPassword;
  final double bottomSpace;
  final Color? bgcolor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const AppInput({super.key,  this.labelText="",  this.prefixIcon,  this.isPassword=false,  this.bottomSpace=16, this.bgcolor, this.controller, this.validator});

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden=true;

  get onPressed => null;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(bottom: widget.bottomSpace),
      child: TextFormField(
controller: widget.controller,
        validator: widget.validator,
        decoration: InputDecoration(

            labelText: widget.labelText,
            fillColor:widget.bgcolor??Colors.white ,
            filled:widget.bgcolor!=null ,
            prefixIcon:widget.prefixIcon==null?null :Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset("assets/icons/${widget.prefixIcon}", fit: BoxFit.scaleDown,),
            ),

           suffixIcon:widget.isPassword? GestureDetector(onTap: (){
             isHidden=!isHidden;
             setState(() {

             });
           }
           ,child:Icon(isHidden?Icons.visibility_off:Icons.visibility)):null,
        ),
        obscureText: widget.isPassword && isHidden,

      ),
    );
  }
}
