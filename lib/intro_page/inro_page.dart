import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:to_do_list/app_theam.dart';
import 'package:to_do_list/intro_page/to_do_list_intro.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100,),
            SizedBox(
              height: 300,
                child: Image.asset("images/intro.png")),

            const SizedBox(height: 20,),
            Text(
              'Get Organized Your Life',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20,),
            const SizedBox(
              width: 300,
              child: Text(
                'This is a simple and effective to-do list and task manager app which helps you manage time.',
                style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 100,),
            InkWell(
              child: Container(
                height: 50,
                width: 300,
                color: App_Text.button_color,
                child:  Center(child: Text("Get Started",
                style: App_Text.button_text,),),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    isIos: true,
                    child:  const To_Do_List_Intro(),
                    // FingerPrint(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
