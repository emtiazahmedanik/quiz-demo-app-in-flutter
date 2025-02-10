import 'package:flutter/material.dart';

class PreviousNextButton extends StatelessWidget {
  final String text;
  const PreviousNextButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(15, 70, 154, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )
      ),
        child: Text(text,style:Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 13),),
    );
  }
}
