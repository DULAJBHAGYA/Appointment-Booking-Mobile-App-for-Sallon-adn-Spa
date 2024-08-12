import 'package:flutter/material.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';
import 'package:salon_appointment_booking_app/features/customer/appointments/presentation/pages/appointments.dart';
import 'package:salon_appointment_booking_app/features/customer/home/presentation/pages/home.dart';
import 'package:salon_appointment_booking_app/features/customer/salons/presentation/pages/salons.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Palette.mainColor,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.train),
            title: const Text('Salons'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Salons(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.train),
            title: const Text('Appointmnets'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Appointments(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.train),
            title: const Text('Reservations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
