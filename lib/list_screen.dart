import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/counter.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Display list here',
              ),
            ],
          ),
        ),
    );
  }
}
