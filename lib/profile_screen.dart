import 'package:flutter/material.dart';
import 'package:listwithprovider/provider/following.dart';
import 'package:listwithprovider/provider/counter.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter ${counter.value}"),
        centerTitle: true,
      ),
      body: Consumer<Following>(
          builder: (context, value, child) => ListView.builder(
              itemCount: value.followingList.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text("You are following:"),
                  );
                } else {
                  return Center(
                    child: Text(value.followingList[index - 1]),
                  );
                }
              })
      )
    );
  }
}
