import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  final String imagePath;
  final String topic;
  final String noOfQuestion;
  final Color ?fillColor;
  final Color ?valueColor;
  final int ?totalQuestion;
  final int ?answeredQuestion;
  const RecentActivities({super.key,required this.imagePath,required this.topic,required this.noOfQuestion,this.fillColor,this.valueColor,this.totalQuestion,this.answeredQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 2,
              blurRadius: 8,
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              child: Row(
                spacing: 10,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  Container(

                      decoration: BoxDecoration(
                          color: Color.fromRGBO(171, 194, 227, 0.73),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      height:34,
                      width: 56,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(imagePath,fit: BoxFit.contain,),
                      )
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(topic,style: Theme.of(context).textTheme.headlineMedium,),
                      Text(noOfQuestion,style: Theme.of(context).textTheme.bodySmall,)
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 37, // Adjust as needed
                  height: 37,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: fillColor, // Fill color
                  ),
                ),
                CircularProgressIndicator(
                  value: answeredQuestion!/totalQuestion!,
                  strokeWidth: 2,
                  backgroundColor: Colors.transparent,
                  valueColor: AlwaysStoppedAnimation(valueColor),
                ),
                Text("${((answeredQuestion!/totalQuestion!) * 100).toInt()}%",)
              ],

            ),
          )
        ],
      ),
    );
  }
}
