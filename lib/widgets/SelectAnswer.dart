import 'package:flutter/material.dart';

class SelectAnswerBtn extends StatelessWidget {
  final String text;
  const SelectAnswerBtn({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 3,
            blurRadius: 10
          )
        ]
      ),
      child: ElevatedButton(
          onPressed: (){},
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))
          ),
          elevation: WidgetStateProperty.all(0),
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.blue.shade100; // Change color on hover
            }
            return Colors.white; // Default color
          }),
        ),
          child: Align(
            alignment: Alignment.centerLeft,
              child: Text(text,style: Theme.of(context).textTheme.bodyLarge,)),
      ),
    );
  }
}
