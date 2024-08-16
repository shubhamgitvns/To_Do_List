import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:to_do_list/home_page/bottombar.dart';

import '../app_theam.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  bool isSecurePassword = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<WidgetState> states) {
      const Set<WidgetState> interactiveStates = <WidgetState>{
        WidgetState.pressed,
        WidgetState.hovered,
        WidgetState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                child: Image.asset("images/login.png"),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Please sign in to continue',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    child: Container(
                      color: Colors.green.shade50,
                      child: SizedBox(
                        child: TextField(
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          controller: App_Text.number,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.green,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.teal,
                              ),
                            ),
                            labelText: "Enter Your Name",
                            labelStyle: const TextStyle(color: Colors.green),
                            prefixIcon: const Icon(Icons.person, color: Colors.teal),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 350,
                    child: Container(
                      color: Colors.green.shade50,
                      child: SizedBox(
                        child: TextField(
                          autofocus: true,
                          obscureText: isSecurePassword,
                          keyboardType: TextInputType.text,
                          controller: App_Text.password,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.green,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.teal,
                              ),
                            ),
                            labelText: "Enter Password",
                            labelStyle: const TextStyle(color: Colors.green),
                            prefixIcon: const Icon(
                              Icons.password,
                              color: Colors.teal,
                              size: 30,
                            ),
                            suffixIcon: tooglePassword(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.teal),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text("Login With Google",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('images/google.png'),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 40), // Adjust this height to ensure it doesn't overflow
              InkWell(
                child: Container(
                  height: 50,
                  width: 350,
                  color: App_Text.button_color,
                  child: const Center(
                    child: Text(
                      "Login",
                      style: App_Text.button_text,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.topToBottom,
                      isIos: true,
                      child: Bottomnavigation(index: 0),
                    ),
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget tooglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          isSecurePassword = !isSecurePassword;
        });
      },
      icon: isSecurePassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
      color: Colors.green,
    );
  }
}
