import 'package:flutter/material.dart';

class SlideDrawer extends StatelessWidget {
  SlideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
            padding: const EdgeInsets.all(0),
            children:  <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("Milan Paulson"), 
                accountEmail: Text("milanpaulson8@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Milan Paulson"),
                subtitle: const Text("Web Developer"),
                trailing: const Icon(Icons.edit),
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text("milanpaulson8@gmail.com"),
                trailing: const Icon(Icons.edit),
                onTap: () {},
              ),
            ],
            
      ));
  }
}