import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';
import 'package:salon_appointment_booking_app/core/widgets/navDrawer.dart';
import 'package:salon_appointment_booking_app/features/customer/home/presentation/widgets/appointmnet_display_card.dart';
import 'package:salon_appointment_booking_app/features/customer/home/presentation/widgets/home_userInfo_container.dart';
import 'package:salon_appointment_booking_app/features/customer/home/presentation/widgets/nearest_salons.dart';
import 'package:salon_appointment_booking_app/features/customer/home/presentation/widgets/services_menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.backgroundColor,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: Palette.mainColor,
              size: 30,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Iconsax.notification,
              color: Palette.mainColor,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const NavDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeUserInfoContainer(),
                const SizedBox(height: 10),
                AppointmentDisplayCard(),
                const SizedBox(height: 40),
                ServicesMenu(),
                const SizedBox(height: 40),
                NearestSalons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
