import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../app_theam.dart';

class Edit_ProfilePage extends StatefulWidget {
  const Edit_ProfilePage({super.key});

  @override
  State<Edit_ProfilePage> createState() => _Edit_ProfilePageState();
}

class _Edit_ProfilePageState extends State<Edit_ProfilePage> {
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  String _connectionStatus = 'Unknown';
  String connection ="";
  String requst_message ="";
   final Connectivity _connectivity = Connectivity();
  bool content =true;
  bool message = false;
  bool loder = false;

  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    _connectivitySubscription.cancel();
    super.dispose();
  }



  Future<void> _checkInternetConnection() async {
    try {
      var connectivityResult = await _connectivity.checkConnectivity();
      _updateConnectionStatus(connectivityResult);
    } on PlatformException catch (e) {
      setState(() {
        _connectionStatus = 'Failed to get connectivity: ${e.message}';
      });
    } catch (e) {
      setState(() {
        _connectionStatus = 'Failed to get connectivity: $e';
      });
    }
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    setState(() {
      if (result == ConnectivityResult.none) {
        _connectionStatus = 'No internet connection';
        setState(() {
          App_Text.connection = "none";
          print(App_Text.connection);
          content = false;

        });
        print(connection);
      } else if (result == ConnectivityResult.mobile) {
        _connectionStatus = 'Connected to mobile data';
        App_Text.connection = "data is on";
        setState(() {
          content =true;
        });

      } else if (result == ConnectivityResult.wifi) {
        _connectionStatus = 'Connected to Wi-Fi';
        App_Text.connection = "data is on";
        setState(() {
          content =true;
        });
      } else {
        _connectionStatus = 'Unknown connection status';
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: InkWell(
          child: const Icon(Icons.arrow_circle_left,size: 50,color: Colors.teal,),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        title: const Center(child: Text("Edit Profile",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 25),)),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),

                  if(App_Text.connection!="none")
                    Row(
                      children: [
                        Container(
                          color: Colors.white,
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              autofocus: true,
                              controller: App_Text.name,
                              cursorColor: Colors.green,
                              style: const TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:  BorderSide(
                                    color: Colors.green.shade200,
                                    //width: 1.5,
                                  ),
                                ),

                                //********Focus border like hover******************8
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(color: Colors.green)),
                                hintText: "Enter Amount",
                                hintStyle: const TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Photo Up-lode",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 10,),
                  // Container(
                  //   color: Colors.white,
                  //   child:MyHomePage(title: 'Image picker',),
                  // ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                                child: Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.white, fontSize: 20),

                                ))),
                        onTap: (){
                          Navigator.pop(context);
                        },

                      )
                    ],
                  )
                ],
              ),
              // if(App_Text.connection == "none")
              //   BackdropFilter(
              //     filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              //     child: Container(
              //       height: 180,
              //       width: 250,
              //       decoration: BoxDecoration(
              //           color: Colors.white,
              //           border: Border.all(color: Colors.red),
              //           borderRadius: BorderRadius.circular(15)),
              //       child: const Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Icon(Icons.error_outline,color: Colors.red,size: 70,),
              //           Text("OOps!",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
              //           SizedBox(
              //             width: 130,
              //             child: Text(
              //               "Please Check Your Internet connection",
              //               style: TextStyle(color: Colors.red),
              //             ),
              //           ),
              //
              //         ],
              //       ),
              //     ),
              //   ),

            ],
          ),
        ),
      ),
    );
  }
}
