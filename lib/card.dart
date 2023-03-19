import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.text1,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final String text1;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
          Image.asset(
            "assets/bg.avif", 
            fit: BoxFit.scaleDown,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text1,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: "Enter some text",
                labelText: "Name",
                border: OutlineInputBorder()
            ),),
          )
        ],
      )
    );
  }
}