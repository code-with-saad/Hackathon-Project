// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_project/utils/constant.dart';
import 'package:hackathon_project/views/login_view.dart';
import '../widgets/error.dart';
import '../widgets/loading.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  signup() async {
    try {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return LoadingDialog();
        },
      );
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: username.text, password: password.text);
      username.text = "";
      password.text = "";
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginView()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return ErrorDialog("The password provided is too weak.");
            });
      } else if (e.code == 'email-already-in-use') {
        showDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return ErrorDialog("The account already exists for that email.");
            });
      }
    } catch (e) {
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return ErrorDialog("$e");
          });
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
                  child: Image.asset("assets/images/login screen logo.jpeg"),
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
                      "Signup",
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
                      "Masukan No. Handphone Anda dan tunggu kode autentik dikirimkan",
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
                    controller: username,
                    decoration: const InputDecoration(
                        label: Text("Username"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        hintText: ("Enter Username")),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 55,
                  child: TextField(
                    obscureText: StringConstants.isobsecure,
                    controller: password,
                    decoration: InputDecoration(
                        label: const Text("Password"),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock_outline),
                        hintText: ("Enter Password"),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              StringConstants.isobsecure =
                                  !StringConstants.isobsecure;
                            });
                          },
                          child: Icon(StringConstants.isobsecure
                              ? Icons.visibility
                              : Icons.visibility_off),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginView()));
                    },
                    child: const Text(
                      "Already have an account Sign in",
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
                      signup();
                    },
                    child: const Text(
                      "Sign up",
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
