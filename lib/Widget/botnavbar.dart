import 'package:flutter/material.dart';

class Botnavbar extends StatefulWidget {
  final int _activePag;
  const Botnavbar(this._activePag, {super.key});

  @override
  State<Botnavbar> createState() => _BotnavbarState();
}

class _BotnavbarState extends State<Botnavbar> {
  void getLink(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/home');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/bioskop');
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/tiket');
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/tiketku');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget._activePag,
      selectedItemColor: Colors.blue[900],
      unselectedItemColor: const Color.fromARGB(236, 151, 151, 151),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      onTap: getLink,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), 
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.theaters_outlined),
          label: "Film",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_activity_outlined), 
          label: "Ticket",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          label: "MyTicket",
        ),
      ],
    );
  }
}
