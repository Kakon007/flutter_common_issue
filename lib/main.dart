import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ShowAlertDialog()));
}

class ShowAlertDialog extends StatefulWidget {
  const ShowAlertDialog({Key? key}) : super(key: key);

  @override
  State<ShowAlertDialog> createState() => _ShowAlertDialogState();
}

class _ShowAlertDialogState extends State<ShowAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      content: SizedBox(
                          width: 50,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 100,
                              itemBuilder: (context, index) => const Text('data'))),
                    ));
          },
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
