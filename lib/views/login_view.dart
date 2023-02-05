// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_project/views/home_view.dart';
import 'package:hackathon_project/views/signup_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isobsecure = true;

  login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
           Navigator.pushReplacement( 
            context, MaterialPageRoute( builder: (context) => HomeView()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Image.asset("assets/images/loginlogo.png"),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "PLANTIFY",
                  style: TextStyle(
                      color: Color(0xff002140),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xff0D986A),
                          fontSize: 36,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: const Text(
                      "Masukan NISN dan password untuk memulai belajar sekarang",
                      style: TextStyle(
                          color: Color(0xff0D986A),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 55,
                  child: TextField(
                    controller: email,
                    decoration: const InputDecoration(
                        label: Text("Email"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: ("Enter Email")),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 55,
                  child: TextField(
                    obscureText: isobsecure,
                    controller: password,
                    decoration: InputDecoration(
                        label: const Text("Password"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock_outline),
                        hintText: ("Enter Password"),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isobsecure = !isobsecure;
                            });
                          },
                          child: Icon(isobsecure
                              ? Icons.visibility
                              : Icons.visibility_off),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password",
                          style:
                              TextStyle(color: Color(0xff004A61), fontSize: 14),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupView()));
                    },
                    child: const Text(
                      "Did not have an account Sign Up",
                      style: TextStyle(color: Colors.grey),
                    )),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0D986A),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.95, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      if(email.text == "admin@gmail.com" && password.text == "123456"){
                        Navigator.pushReplacement( 
                          context, MaterialPageRoute( builder: (context) => HomeView()));
                      }
                      login();
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
