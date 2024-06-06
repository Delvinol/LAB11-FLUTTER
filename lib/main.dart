import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cupertino and Material Alerts'),
        ),
        body: const Center(
          child: AlertButtons(),
        ),
      ),
    );
  }
}

class AlertButtons extends StatelessWidget {
  const AlertButtons({super.key});

  void _showMaterialAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alerta de Material'),
          content: const Text('Esta es una alerta de Material'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showMaterialAlertWithOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alerta de Material y otras opciones'),
          content: const Text('Esta es una alerta de material y otras opciones'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Accept'),
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoAlert(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Cupertino Alert'),
          content: const Text('This is a Cupertino alert.'),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoAlertWithOptions(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Cupertino Alert with Options'),
          content: const Text('This is a Cupertino alert with options.'),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Accept'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () => _showMaterialAlert(context),
          child: const Text('Show Material Alert'),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => _showMaterialAlertWithOptions(context),
          child: const Text('Show Material Alert with Options'),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () => _showCupertinoAlert(context),
          
          child: const Text(
            'Show Cupertino Alert',
            style: TextStyle(
              color: Color.fromARGB(255, 243, 100, 33),
            ),
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: () => _showCupertinoAlertWithOptions(context),
          child: const Text(
            'Show Cupertino Alert with Options',
            style: TextStyle(
              color: Color.fromARGB(255, 243, 100, 33),
            ),
          ),
        ),
      ],
    );
  }
}