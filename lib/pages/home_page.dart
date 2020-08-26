import 'package:design_two/pages/Register.dart';
import 'package:design_two/pages/pwrecovary.dart';
import 'package:flutter/material.dart';

class MyhomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.orange],
                      ),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(90))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(80, 100, 30, 5),
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset("images/users.png",
                                height: 100, width: 100),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 50, 20, 0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white70,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 1),
                                blurRadius: 5,
                                color: Colors.grey.shade600,
                              ),
                              BoxShadow(
                                offset: Offset(-1, -1),
                                blurRadius: 5,
                                color: Colors.grey.shade600,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              icon: Icon(Icons.email),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white70,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 1),
                                blurRadius: 5,
                                color: Colors.grey.shade600,
                              ),
                              BoxShadow(
                                offset: Offset(-1, -1),
                                blurRadius: 5,
                                color: Colors.grey.shade600,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              icon: Icon(Icons.vpn_key),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 5, 80, 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Recovery()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 60, 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 60,
                            width: MediaQuery.of(context).size.width - 160,
                            child: MaterialButton(
                              elevation: 2,
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26),
                              ),
                              color: Colors.orange,
                              textColor: Colors.white,
                              child: Text(
                                "LOGIN",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Resister()));
                      },
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Don't Have an account? ",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18)),
                          TextSpan(
                            text: "Register",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600),
                          ),
                        ]),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
