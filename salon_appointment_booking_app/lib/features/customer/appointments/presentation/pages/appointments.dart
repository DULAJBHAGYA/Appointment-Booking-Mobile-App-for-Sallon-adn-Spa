import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';
import 'package:salon_appointment_booking_app/core/widgets/navDrawer.dart';
import 'package:salon_appointment_booking_app/features/customer/appointments/presentation/widgets/appointment_display_widget.dart';
import 'package:salon_appointment_booking_app/features/customer/home/data/dataSources/local%20data/appointments_data.dart';

class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  List<dynamic> _appointments = AppointmentsData.appointments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.backgroundColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Palette.mainColor,
              size: 30,
            ),
          ),
        ),
      ),
      drawer: const NavDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Appointments',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Palette.whiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Iconsax.filter,
                        size: 20,
                        color: Palette.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: _appointments.map((appointment) {
                    return Column(
                      children: [
                        AppointmentDisplayWidget(
                          salon: appointment['salon'],
                          date: appointment['date'],
                          startTime: appointment['start_time'],
                          address: appointment['address'],
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
