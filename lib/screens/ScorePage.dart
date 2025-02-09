import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_demo/widgets/PreviousNextButton.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                SizedBox(height: 30,),
                SizedBox(
                  width: 187,
                  height: 187,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomPaint(
                        size: const Size(187, 187), // Set size of the canvas
                        painter: CirclePainter(radius: 80, color: Color.fromRGBO(64, 125, 216, 1)),
                      ),
                      CustomPaint(
                        size: const Size(168, 168), // Set size of the canvas
                        painter: CirclePainter(radius: 70, color: Color.fromRGBO(15, 70, 154, 1)),
                      ),
                      Text("Your Score \n 26/30",style: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white)),),
            
                    ],
                  ),
                ),
                Text("Congratulation",style: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color.fromRGBO(15, 70, 154, 1))),),
                Text("Great job, Emtiaz Ahmed! You Did It",style: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(15, 70, 154, 1))),),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(width:double.infinity,child: PreviousNextButton(text: "Share")),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(width:double.infinity,child: PreviousNextButton(text: "Back To Home")),
                )
                
            
              ],
            ),
          )
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final double radius;
  final Color color;

  CirclePainter({required this.radius, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill; // Use .stroke for an outlined circle

    // Draw the circle at the center of the available space
    canvas.drawCircle(size.center(Offset.zero), radius, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate.radius != radius || oldDelegate.color != color;
  }
}