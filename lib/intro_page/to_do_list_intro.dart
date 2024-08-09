import 'package:flutter/material.dart';

import '../app_theam.dart';

class To_Do_List_Intro extends StatelessWidget {
  const To_Do_List_Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 100,),
              SizedBox(
                  height: 200,
                  child: Image.asset("images/list.png")),

              const SizedBox(height: 25,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Icon(Icons.file_copy_rounded,color: Colors.teal,size: 35,),
                    ),
                    Text(
                      'Create Task Quickly and Easily',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Icon(Icons.alarm,color: Colors.teal,size: 35,),
                    ),
                    Text(
                      'Task Reminders',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Icon(Icons.personal_injury,color: Colors.teal,size: 35,),
                    ),
                    Text(
                      'Personalized Widget',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Icon(Icons.supervised_user_circle,color: Colors.teal,size: 35,),
                    ),
                    Text(
                      'Users Friendly',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70,),
              Container(
                height: 50,
                width: 300,
                color: App_Text.button_color,
                child:  Center(child: Text("Continue >>",
                  style: App_Text.button_text,),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
