import 'package:flutter/material.dart';
import 'package:login_registion/view/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Logout This page'),
                    actions: [
                      ElevatedButton(onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                      }, child: Text('Log out')),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          }, child: const Text('cancle'))
                    ],
                  );
                },
              );
            },
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('Home page'),
      ),
    );
  }
}
