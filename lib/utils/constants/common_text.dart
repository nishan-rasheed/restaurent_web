import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({Key? key, 
  required this.text, 
  this.maxlines, 
  this.textAlign, 
  this.textStyle}) : super(key: key);


  final String text;
  final int? maxlines;
  final TextAlign? textAlign;
  final TextStyle? textStyle; 

  @override
  Widget build(BuildContext context) {
    return Text(text,
    textAlign: textAlign,
    maxLines: maxlines,
    style: textStyle,
    );
  }
}