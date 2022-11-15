import 'package:flutter/material.dart';
import 'package:listwithprovider/provider/following.dart';

class FollowingListItem extends StatelessWidget {
  const FollowingListItem({Key? key,required this.following ,required this.name, required this.initials}) : super(key: key);

  final Following following;
  final String name;
  final String initials;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: CircleAvatar(
        child: Text(initials),
      ),
      trailing: IconButton(
        icon: (following.followingList.contains(name)) ? Icon(Icons.check) : Icon(Icons.add),
        onPressed: () {
          if (following.followingList.contains(name)) {
            following.remove(name);
          } else {
            following.add(name);
          }
        },
      ),
    );;
  }
}
