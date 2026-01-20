import 'package:flutter/material.dart';

class GridVieww extends StatelessWidget {
  const GridVieww({super.key});
  static String id = 'GridVieww';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Test 2'), centerTitle: true),
      body: Center(
        child: Stack(
          children: [
            CircleAvatar(
              radius: 120,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('assets/images/Telos_Logo.png'),
            ),
            Positioned(
              bottom: 0,
              right: 0,

              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.8),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add, size: 28, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
