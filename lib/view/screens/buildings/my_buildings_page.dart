import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../router.dart';

class MyBuildingsPage extends StatelessWidget {
  const MyBuildingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MyBuildings",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () => context.go(ScreenPaths.addBuilding),
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),

    );
  }
}
