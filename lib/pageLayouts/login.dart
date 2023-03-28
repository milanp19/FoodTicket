import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:foodticket/pageLayouts/home_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  static const String routeName = "/login";
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  var count = 0;

  void addCount() {
    setState(() {
      count = count + 1;
    });
  }

  void subtractCount() {
    setState(() {
      if (count != 0) {
        count = count - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Center(child: Text("Food Ticket")),
      ),
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formKey,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: _usernameController,
                          validator: (s) {},
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Enter your name",
                            labelText: "Name",
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text("How many tickets do you need?"),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                                onPressed: subtractCount,
                                icon: Icon(Icons.remove)),
                            Text(count.toString()),
                            IconButton(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                                onPressed: addCount,
                                icon: Icon(
                                  Icons.add,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
        child: const Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}
