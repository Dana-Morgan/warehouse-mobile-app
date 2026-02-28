import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../router.dart';

class AddBuildingPage extends StatelessWidget {
  const AddBuildingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text(
          "Add Building",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30),
          onPressed: () => context.go(ScreenPaths.myBuildings)
        ),
      ),

    );
  }
}
