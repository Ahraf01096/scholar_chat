import 'package:flutter/material.dart';

class CustomTextFromFieldEmail extends StatelessWidget {
   CustomTextFromFieldEmail({ this.hintText,this.onChanged});
String? hintText;
Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      validator: (data){
        if(data!.isEmpty ){
          return 'field is require';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(

          suffixIcon: Icon(Icons.email,color: Color(0xffC7EDE6)),
          labelText: hintText,
          labelStyle: TextStyle(
              color: Colors.white
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Color(0xffC7EDE6),)
          ),
          enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white)
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white)
          )
      ),
    );
  }
}


class CustomTextFromFieldPassword extends StatefulWidget {
  CustomTextFromFieldPassword({ this.hintText,this.onChanged});
  String? hintText;
  Function(String)? onChanged;

  @override
  State<CustomTextFromFieldPassword> createState() => _CustomTextFromFieldPasswordState();
}

class _CustomTextFromFieldPasswordState extends State<CustomTextFromFieldPassword> {
  bool VisiblePassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data){
        if(data!.isEmpty ){
          return 'field is require';
        }
      },

      onChanged: widget.onChanged,
      style: TextStyle(color: Colors.white),
      obscureText: !VisiblePassword,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          labelText: widget.hintText,
          labelStyle: TextStyle(
            color: Colors.white
          ),
          suffixIcon: IconButton(
            icon: Icon(
              VisiblePassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: Color(0xffC7EDE6),
            ),
            onPressed: () {
              setState(() {
                VisiblePassword = !VisiblePassword;
              });
            },
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Color(0xffC7EDE6),)
          ),
          enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white)
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white)
          )
      ),
    );
  }
}
