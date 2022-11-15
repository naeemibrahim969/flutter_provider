import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/counter.dart';
import 'provider/following.dart';
import 'package:listwithprovider/provider/following.dart';
import 'package:listwithprovider/adapter/following_list_item.dart';
import 'package:listwithprovider/profile_screen.dart';


class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final following = Provider.of<Following>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Provider",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        actions: [
          TextButton(
              child: Text(
                "next",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              }),
        ],
      ),
        body: Consumer<Following>(
          builder: (context, value, child) => ListView(
              children:[
                FollowingListItem(following: value, name: "Elon Musk", initials: "EM"),
                FollowingListItem(following: value, name: "Kanye West", initials: "KW"),
                FollowingListItem(following: value, name: "Kim Kardashian", initials: "KK"),
                FollowingListItem(following: value, name: "Kobe Bryant", initials: "KB"),
                FollowingListItem(following: value, name: "Tom Hanks", initials: "TH"),
                FollowingListItem(following: value, name: "Lebron James", initials: "LJ"),
                FollowingListItem(following: value, name: "Michael Jordan", initials: "MJ"),
                FollowingListItem(following: value, name: "Joe Rogan", initials: "JR"),
                FollowingListItem(following: value, name: "Selena Gomez", initials: "SG"),
                FollowingListItem(following: value, name: "Oprah Winfrey", initials: "OW"),
              ],
            ),
        )
    );
  }
}
