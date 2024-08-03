import 'package:flutter/material.dart';

void showVerifyPhoneDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Text('Verify Phone Number'),
        content: Column(
          children: [
            Text('We have sent code to your phone number'),
            Text('+00 000000 0000'),

            
          ],
        ),
      );
    },
  );
}
