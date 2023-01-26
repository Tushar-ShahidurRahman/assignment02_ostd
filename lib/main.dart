import 'package:assignment02_ostd/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void showAlertDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          backgroundColor: Colors.grey,
          title: const Text("Title of an Alert dialog:"),
          content: const Text('Do you want to see this Dialog more?'),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Yes'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('No'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      drawer: const MyDrawer(),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: const Text('press here'),
      )),
    );
  }
}
