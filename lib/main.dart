import 'package:alert_dialog_list_view_common_issue/custom_app_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home: CustomAppBar()));
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
