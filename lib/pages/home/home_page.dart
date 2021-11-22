import 'package:celo_app/pages/My%20Tickets/my_tickets_page.dart';
import 'package:celo_app/pages/explore/explore_page.dart';
import 'package:celo_app/pages/favorite/favorite_page.dart';
import 'package:celo_app/pages/profile/profile_page.dart';
import 'package:celo_app/shared/theme/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  List<Widget> pages = [
    const ExplorePage(),
    const MyTicketsPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];
  List<AppBar> appbar = [
    AppBar(
      backgroundColor: Colors.black,
    ),
    AppBar(
      title: const Text('Meus NFTickets'),
      backgroundColor: Colors.black,
    ),
    AppBar(
      title: const Text('Favorite'),
      backgroundColor: Colors.black,
    ),
    AppBar(
      title: const Text('favorite'),
      backgroundColor: Colors.black,
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar[index],
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: pages[index],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (teste) {
          index = teste;
          setState(() {});
        },
        currentIndex: index,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(CupertinoIcons.search),
            activeIcon: Icon(CupertinoIcons.search),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(CupertinoIcons.ticket),
            activeIcon: Icon(CupertinoIcons.ticket_fill),
            label: 'Meus tickets',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite),
              label: 'Favoritos'),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(CupertinoIcons.person),
            activeIcon: Icon(CupertinoIcons.person_fill),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
