import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_app_demo/screens/HtmlPage.dart';
import 'package:quiz_app_demo/widgets/categoriesWidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade300,
              child: const Icon(Icons.person),
            ),
            SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Emtiaz Ahmed',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                    'ID-1045',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ElevatedButton.icon(
                onPressed: (){},
                label: Text('150',style: Theme.of(context).textTheme.headlineLarge,),
              icon: Icon(Icons.diamond_outlined,color: Colors.black,),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent.shade100,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                SizedBox(height: 1,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      // Background Image with Blur
                      Container(
                        width: double.infinity,
                        height: 129,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/trophy bg.png"), // Your image path
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5), // Blur effect
                            child: Container(
                              color: Colors.black.withAlpha(0), // Optional dark overlay
                            ),
                          ),
                        ),
                      ),
            
                      // Foreground Content
                      Positioned.fill(
                        left: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Test you knowledge with quiz's",
                              style: Theme.of(context).textTheme.labelLarge
                            ),
                            const SizedBox(height: 15),
                            Text("You're just looking for a playful way to learn new facts, our quizzes are designed to entertain and educate.",
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            SizedBox(height: 5,),
                            ElevatedButton.icon(
                              onPressed: () {
                                // Button action
                              },
                              label: Text('Play Now',style: Theme.of(context).textTheme.labelMedium,),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: screenWidth*0.8,
                        height: 40,
                        child: TextField(
                          style: TextStyle(fontSize: 14),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            filled: true,
                            fillColor: Color.fromRGBO(122, 131, 128, 0.2),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent,width: 0)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent,width: 0)
                            ),
                            suffixIcon: Icon(Icons.search_rounded),
                            hintText: 'Search',
                            hintStyle: Theme.of(context).textTheme.headlineMedium
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                    color: Color.fromRGBO(122, 131, 128, 0.2)
                        ),
                       child: Icon(Icons.filter_list),
                      )
            
                    ],
                  ),
                ),
                Padding(padding:const EdgeInsets.symmetric(horizontal: 10),
                child: Text('Categories',style: Theme.of(context).textTheme.headlineLarge,),
                ),
                Padding(padding:const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HtmlPage()));
                      },
                        child: Categories(imagePath: "assets/images/html_1051277.png", text: "HTML"),
                    ),
                    Categories(imagePath: "assets/images/java-script_1199124.png", text: "JavaScript"),
                    Categories(imagePath: "assets/images/atom_4969244.png", text: "React"),
                    Categories(imagePath: "assets/images/flutter.png", text: "Flutter"),
                    Categories(imagePath: "assets/images/python_5968350.png", text: "Python"),
                  ],
                ),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('Recent Activity',style: Theme.of(context).textTheme.headlineLarge,),
                ),
                Padding(padding:const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
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
                                        child: Image.asset('assets/images/html_1051277.png',fit: BoxFit.contain,),
                                      )
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('HTML',style: Theme.of(context).textTheme.headlineMedium,),
                                      Text('30 Question',style: Theme.of(context).textTheme.bodySmall,)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              child: Icon(Icons.add_call),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                )
            
              ],
            ),
          )
      ),
    );
  }
}
