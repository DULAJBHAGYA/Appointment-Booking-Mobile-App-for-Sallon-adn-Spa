import 'package:flutter/material.dart';
import 'package:salon_appointment_booking_app/features/home/presentation/widgets/services_scroll_menu_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Services',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Spacer(),
                    Text(
                      'View All',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ServicesScrollMenuItem(
                        title: 'Hair Cut',
                        image: 'images/hair_cut_menu.jpg',
                      ),
                      const SizedBox(width: 10),
                      ServicesScrollMenuItem(
                        title: 'Facial',
                        image: 'images/facial_menu.jpg',
                      ),
                      const SizedBox(width: 10),
                      ServicesScrollMenuItem(
                        title: 'Mesage',
                        image: 'images/message_menu.jpg',
                      ),
                      const SizedBox(width: 10),
                      ServicesScrollMenuItem(
                        title: 'Makeup',
                        image: 'images/makeup_menu.jpg',
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
