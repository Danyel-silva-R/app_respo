import 'package:app_repositorio/auth/auth_gate.dart';
import 'package:app_repositorio/screens/intro_screns/intro_page1.dart';
import 'package:app_repositorio/screens/intro_screns/intro_page2.dart';
import 'package:app_repositorio/screens/intro_screns/intro_page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _Intro();
}

class _Intro extends State<Intro> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
           IntroPage1(),
           IntroPage2(),
           IntroPage3(),

          ],
        ),
         Center(
           child: Column(
             children: [
               Container(
                height:400,
                color: Color.fromRGBO(49, 109, 239, 1),
                child: Center(
                    child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Text('Hive Hub:',
                    style: TextStyle(
                      fontSize:35 ,
                      fontWeight: FontWeight.bold,
                      color:Colors.white
                    ),
                    ),
                    Text('Space Station',
                    style: TextStyle(
                      fontSize:35 ,
                       fontWeight: FontWeight.bold,
                      color:Colors.white
                    ),
                    ),
                    Image.asset(
                      'assets/images/Group 5.png',
                      height: 250,
                      width: 300,
                    )
                  ],
                )),
                   ),
             ],
           ),
         ),
        Container(
          alignment: Alignment(0, 0.75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // butao de volta
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text('skip')),
                SmoothPageIndicator(controller: _controller, count: 3),

                onLastPage
                ? GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){return AuthGate();}));
                  },
                  child: Text('done'))
                :GestureDetector(
                  onTap: () {
                       _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                  },
                  child: Text('next')),

                // butao de avança
              ],
        ))
      ],
    ));
  }
}
