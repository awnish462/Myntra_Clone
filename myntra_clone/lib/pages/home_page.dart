// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/drawer.dart';
import 'package:myntra_clone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Myntra".text.make(),
        actions: [
           IconButton(
            iconSize: 30,
            icon: const Icon(Icons.search),
            tooltip: 'Show Snackbar',
            onPressed: () {
              
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
           IconButton(
            iconSize: 30,
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
           IconButton(
           icon: Icon(CupertinoIcons.heart),
           iconSize: 30,
           
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
           IconButton(
            iconSize: 30,
           icon: Icon(CupertinoIcons.bag),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body: Container(
        height: 80,
        color:Mytheme.creamColor,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1492446845049-9c50cc313f00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1492446845049-9c50cc313f00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ),
            ),
            
          ],
         ), 
            
        ),
      
      drawer: drawer(),
    );
  }
}
