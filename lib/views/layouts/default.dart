import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/models/bottom_navigation_mode.dart';
import 'package:insta_clone/routes/router.dart';
import 'package:insta_clone/views/account/profile.dart';
import 'package:insta_clone/views/history/history.dart';
import 'package:insta_clone/views/home/home.dart';
import 'package:insta_clone/views/post/post.dart';
import 'package:insta_clone/views/search/search.dart';
import 'package:provider/provider.dart';

class Default extends StatelessWidget {
  final List<Widget> _pageList = <Widget>[
    const Home(),
    const Search(),
    const Post(),
    const History(),
    const Profile(),
  ];
  final tabItems = [
    const BottomNavigationBarItem(
      activeIcon: Icon(CupertinoIcons.house_alt_fill, color: Colors.black),
      icon: Icon(CupertinoIcons.house_alt, color: Colors.black),
      label: '',
    ),
    const BottomNavigationBarItem(
      activeIcon: Icon(CupertinoIcons.search_circle_fill, color: Colors.black),
      icon: Icon(CupertinoIcons.search, color: Colors.black),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.add_circled, color: Colors.black),
      label: '',
    ),
    const BottomNavigationBarItem(
      activeIcon: Icon(CupertinoIcons.bell_fill, color: Colors.black),
      icon: Icon(CupertinoIcons.bell, color: Colors.black),
      label: '',
    ),
    const BottomNavigationBarItem(
      activeIcon: Icon(CupertinoIcons.person_fill, color: Colors.black),
      icon: Icon(CupertinoIcons.person, color: Colors.black),
      label: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavigationModel>(
      create: (_) => BottomNavigationModel(),
      child: Consumer<BottomNavigationModel>(
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Insta Clone',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              elevation: 0.0,
            ),
            body: _pageList[model.currentIndex], // define router
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: model.currentIndex,
              onTap: (index) {
                index == 2
                    ? Navigator.pushNamed(context, postRoute)
                    : model.currentIndex = index;
              },
              items: tabItems, // define router
            ),
          );
        },
      ),
    );
  }
}
