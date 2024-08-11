import 'package:flutter/material.dart';
import 'package:to_do_list/home_page/task_page.dart';
class PandingPage extends StatefulWidget {
  const PandingPage({super.key});

  @override
  State<PandingPage> createState() => _PandingPageState();
}

class _PandingPageState extends State<PandingPage> {
  int isselect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_circle_left,size: 50,color: Colors.teal,),
        title: const Text("Panding Task",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 25),),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          //************ search bar *************//
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            height: 50,
              color: Colors.white,
              child: SizedBox(
                child: TextField(
                  autofocus: true,
                  cursorColor: Colors.grey,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.red,
                          //width: 1.5,
                        ),
                      ),

                      //********Focus border like hover******************8
                      focusedBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green.shade200),
                      borderRadius: BorderRadius.circular(15)),
                      
                      hintText: "Search",
                      hintStyle: const TextStyle(color: Colors.green),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.green,
                        size: 30,
                      )),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          //************ searching method *************//

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: isselect != 0
                              ? Colors.white
                              : Colors.green.shade300,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.green.shade300)),
                      child: Center(
                          child: Text(
                            "1 days later",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: isselect != 0 ? Colors.black : Colors.white,
                            ),
                          ))),
                  onTap: () {
                    setState(() {
                      isselect = 0;
                      print(isselect);
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: isselect != 1
                              ? Colors.white
                              : Colors.green.shade300,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.green.shade300)),
                      child: Center(
                          child: Text(
                            "2 days later",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: isselect != 1 ? Colors.black : Colors.white,
                            ),
                          ))),
                  onTap: () {
                    setState(() {
                      isselect = 1;
                    });
                  },
                ),
                const SizedBox(width: 10,),
                InkWell(child:
                Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        color: isselect != 2
                            ? Colors.white
                            : Colors.green.shade300,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.green.shade300)),
                    child: Center(
                      child: Text("3 days later",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: isselect != 2 ? Colors.black : Colors.white,
                        ),),
                    )),
                  onTap: (){
                    setState(() {
                      isselect=2;
                    });
                  },
                ),
                const SizedBox(width: 10,),

                InkWell(
                  child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: isselect != 3
                              ? Colors.white
                              : Colors.green.shade300,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.green.shade300)),
                      child: Center(
                          child: Text("In a week",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: isselect != 3 ? Colors.black : Colors.white,
                            ),))),
                  onTap: (){
                    setState(() {
                      isselect=3;
                    });
                  },
                ),
                const SizedBox(width: 10,),
                InkWell(
                  child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: isselect != 4
                              ? Colors.white
                              : Colors.green.shade300,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.green.shade300)),
                      child: Center(child: Text("In a month",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: isselect != 4 ? Colors.black : Colors.white,
                        ),))),
                  onTap: (){
                    setState(() {
                      isselect = 4;
                    });
                  },),
                const SizedBox(width: 10,),
                InkWell(
                  child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: isselect != 5
                              ? Colors.white
                              : Colors.green.shade300,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.green.shade300)),
                      child: Center(
                          child: Text("In a year",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: isselect != 5 ? Colors.black : Colors.white,
                            ),))),
                  onTap: (){
                    setState(() {
                      isselect = 5;
                    });
                  },),
                const SizedBox(width: 10,),
              ],
            ),
          ),
          //************ Panding task *************//
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("All Pnading Tasks",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          TaskPage(),
          const SizedBox(height: 20,),
          TaskPage(),
          const SizedBox(height: 20,),
          TaskPage()



        ],
      ),
    );
  }
}
