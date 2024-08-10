import 'package:flutter/material.dart';
import 'package:to_do_list/app_theam.dart';
import 'package:to_do_list/home_page/category.dart';
import 'package:to_do_list/home_page/task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text("Welcome",
          style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 30),
        )),
        actions: const [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Icon(Icons.notification_add,size: 30,color: Colors.teal,),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
              Center(
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text("Hello,",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 35,fontStyle: FontStyle.italic),),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width:200,
                                child: Text("MR: Shubham Mourya",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("images/intro.png"),
                            )

                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              width:200,
                                child: Text("")),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.white,width: 1.5),

                              ),

                              child: const Center(
                                child: Text("Edit",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Category(),

              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                  Text("Today's Task",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(height: 20,),
             TaskPage(),
             SizedBox(height: 20,),
             TaskPage(),

            ],
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.teal
            ),
            child:
            const Icon(Icons.add,size: 50,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
