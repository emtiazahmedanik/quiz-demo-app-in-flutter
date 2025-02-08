import 'package:flutter/material.dart';
import 'package:quiz_app_demo/widgets/PreviousNextButton.dart';
import 'package:quiz_app_demo/widgets/SelectAnswer.dart';
import 'package:sizer/sizer.dart';

class HtmlPage extends StatelessWidget {
  const HtmlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('HTML',style: Theme.of(context).textTheme.headlineLarge,),
            Text('30 Question',style:Theme.of(context).textTheme.headlineMedium ,)
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 3,
                      blurRadius: 8,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 1,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Question: 3/30',style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Color.fromRGBO(15, 70, 154, 1)),),
                          TextButton(
                              onPressed: (){},
                              child:  Text('Quit',style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Color.fromRGBO(160, 37, 37, 1)))
                          )
                        ],
                      ),
                      Text("Who is making the web standards?",style: Theme.of(context).textTheme.headlineLarge,),
                      SelectAnswerBtn(text: 'World Wide Web'),
                      SelectAnswerBtn(text: 'Microsoft'),
                      SelectAnswerBtn(text: 'Google'),
                      SelectAnswerBtn(text: 'Mozilla'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ConstrainedBox(
                            constraints:BoxConstraints(maxWidth: 140),
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent
                              ),
                              child: ExpansionTile(
                                title: Row(
                                  children: [
                                    Text("See Result",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.deepPurple,fontSize: 12),),
                                    Icon(Icons.arrow_drop_down_outlined)
                                  ],
                                ),

                                iconColor: Colors.deepPurple,
                                tilePadding: EdgeInsets.symmetric(horizontal: 0),
                                childrenPadding: EdgeInsets.symmetric(horizontal: 0),
                                trailing: SizedBox(height: 10,),
                                initiallyExpanded: false,
                                shape: RoundedRectangleBorder(),
                                children: [
                                  Align(
                                    alignment:Alignment.centerLeft,
                                      child: Text('WWB',style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black,) ,))
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: (){},
                              child: Text("Submit",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.blue,fontSize: 12),)
                          )
                        ],
                      ),
        
                    ],
                  ),
                ),
              ),
        
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PreviousNextButton(text: "Previous",),
                  PreviousNextButton(text: "Next",),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
