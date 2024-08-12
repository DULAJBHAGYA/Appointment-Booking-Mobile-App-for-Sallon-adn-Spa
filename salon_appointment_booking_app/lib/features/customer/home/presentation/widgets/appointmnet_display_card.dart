import 'package:flutter/material.dart';
import 'package:salon_appointment_booking_app/features/customer/home/data/dataSources/local%20data/appointments_data.dart';
import 'package:salon_appointment_booking_app/features/customer/home/presentation/widgets/home_appointmnet_display_container.dart';

class AppointmentDisplayCard extends StatelessWidget {
  const AppointmentDisplayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: AppointmentsData.appointments.map((appointment) {
          return Row(
            children: [
              HomeAppointmentDisplayContainer(
                salon: appointment['salon'],
                date: appointment['date'],
                startTime: appointment['start_time'],
              ),
              const SizedBox(width: 10),
            ],
          );
        }).toList(),
      ),
    );
  }
}
