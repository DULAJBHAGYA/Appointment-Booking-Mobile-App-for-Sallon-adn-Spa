import 'package:flutter/material.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';
import 'package:salon_appointment_booking_app/features/customer/appointments/presentation/pages/appoint_display.dart';

class AppointmentDisplayWidget extends StatelessWidget {
  final String salon;
  final String address;
  final String startTime;
  final String date;
  const AppointmentDisplayWidget({
    required this.address,
    required this.salon,
    required this.startTime,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Palette.mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              salon,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 5),
            Text(
              date + '  ' + startTime,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Palette.whiteColor,
                  size: 20,
                ),
                const SizedBox(width: 5),
                Text(
                  address,
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppointmentDisplay(
                          salon: salon,
                          date: date,
                          startTime: startTime,
                          address: address),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Palette.blackColor,
                  radius: 20,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Palette.whiteColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
