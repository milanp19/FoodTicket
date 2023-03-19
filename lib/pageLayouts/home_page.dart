import 'package:flutter/material.dart';
import 'package:foodticket/drawer.dart';
import 'package:foodticket/pageLayouts/login.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});
  static const String routeName = "/home";
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      appBar: AppBar(
          title: const Text('Details'),
          actions: [],
          backgroundColor: Theme.of(context).colorScheme.primaryContainer),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You need 3 tickets.", style: TextStyle(fontSize: 24)),
          SizedBox(
            height: 10,
          ),
          Text("Payment Options:")
        ],
      )),
    );
  }
}
