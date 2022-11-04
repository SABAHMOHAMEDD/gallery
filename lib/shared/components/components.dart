import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../mytheme.dart';


Widget defaultButton(
    {
      double width=double.infinity,
      double? height,
      required Color background ,
      bool isUpperCase=true,
      double radius=0.0,
      required Function? function(),
      required String text,


    })

=> Container(
  height: height,
  width: width,
  child: MaterialButton(
    elevation: 0,
    color: MyTheme.primaryColor,
    onPressed: function,
    child: Text(
      isUpperCase
          ? text.toUpperCase()
          : text,
      style: TextStyle(
          color: Colors.white
      ),
    ),

  ),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),

      color: MyTheme.primaryColor


  ),


);


Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  void Function(String)? onSubmit,
  required Function onChange,
  required String?Function(String?)? validator,
  required String label,
  required IconData prefix,
  IconData? suffix,
  bool isPassword =false


})=>  TextFormField(
  controller: controller,
  keyboardType: type,
  onFieldSubmitted: onSubmit,
  onChanged: onChange(),
  validator: validator,
  cursorColor: MyTheme.primaryColor,




  decoration: InputDecoration(


    suffixIconColor: MyTheme.primaryColor,
    labelText: label,
    prefixIcon: Icon(
      prefix,color: MyTheme.primaryColor,
    ),
    suffixIcon: suffix!=null? Icon(suffix)  :null ,
    border: OutlineInputBorder(
      borderSide:
      BorderSide(color: MyTheme.primaryColor, width: 1),

    ),

    enabledBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color: MyTheme.primaryColor, width: 1)),
    focusedBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color: MyTheme.primaryColor, width: 1)

    ),
    labelStyle: TextStyle(color: MyTheme.primaryColor),


  ),

);



void showToast({
  required String text,
  required ToastState state,

})=>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor:chooseToastColor(state) ,
        textColor: Colors.white,
        fontSize: 16.0
    );
enum  ToastState{SUCCESS,ERROR,WARNING}

Color chooseToastColor(ToastState state) {
  Color color;
  switch (state) {
    case ToastState.SUCCESS:
      color = Colors.green;
      break;

    case ToastState.ERROR:
      color = Colors.red;
      break;

    case ToastState.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

