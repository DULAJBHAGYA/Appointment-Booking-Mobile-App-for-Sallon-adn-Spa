import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';

class AppointmentDisplay extends StatefulWidget {
  final String date;
  final String salon;
  final String startTime;
  final String address;

  const AppointmentDisplay(
      {required this.salon,
      required this.address,
      required this.date,
      required this.startTime,
      super.key});

  @override
  State<AppointmentDisplay> createState() => _AppointmentDisplayState();
}

class _AppointmentDisplayState extends State<AppointmentDisplay> {
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
              Navigator.pop(context);
            },
            child: Icon(
              Iconsax.arrow_left_2,
              color: Palette.mainColor,
              size: 30,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.date,
                  style: GoogleFonts.urbanist(
                    fontSize: 24,
                    color: Palette.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.startTime,
                  style: GoogleFonts.urbanist(
                    fontSize: 20,
                    color: Palette.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Palette.blackColor,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.address,
                      style: GoogleFonts.urbanist(
                        color: Palette.blackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
