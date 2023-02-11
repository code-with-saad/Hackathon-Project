import 'package:flutter/material.dart';
import '../views/login_view.dart';

class ErrorDialog extends StatelessWidget {
  String error;
  ErrorDialog(this.error);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        decoration: const BoxDecoration(
          color: Color(0xFFEDECF2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Error!",
              style: TextStyle(
                fontSize: 26,
                fontFamily: "PhilospherBold",
                color: Color(0xFF0D986A),
              ),
            ),
            const Icon(
              Icons.error,
              color: Colors.red,
            ),
            Text(
              error,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: "PhilosopherRegular",
                color: Color(0xFF002140),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
