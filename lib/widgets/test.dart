import 'package:flutter/material.dart';

class GridVieww extends StatelessWidget {
  const GridVieww({super.key});
  static String id = 'GridVieww';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Test 2'),centerTitle: true,),
      body: Column(
        children: [
          Image.asset('assets/images/Telos_Logo.png'),
          SizedBox(height: 20),
          ListTile(
            title: Text(
              'Telos',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Telos is good', style: TextStyle(fontSize: 16)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.book, color: Colors.orange),
                SizedBox(width: 8),
                Text('4.8', style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: Colors.blue),
                  Text("Call"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.roundabout_left_sharp, color: Colors.blue),
                  Text("Route"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share, color: Colors.blue),
                  Text("Share"),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Lorem ipsum dolor sits, lacinia quis posuere ut, pulvinar vitae dolor. Integer eu nibh at nisi ullamcorper sagittis id vel leo. Integer feugiat faucibus libero, at maximus nisl suscipit posuere. Morbi nec enim nunc. Phasellus bibendum turpis ut ipsum egestas, sed sollicitudin elit convallis. Cras pharetra mi tristique sapien vestibulum lobortis. Nam eget bibendum metus, non dictum mauris. Nulla at tellus sagittis, viverra est a, bibendum metus.",
          ),
        ],
      ),
    );
  }
}
