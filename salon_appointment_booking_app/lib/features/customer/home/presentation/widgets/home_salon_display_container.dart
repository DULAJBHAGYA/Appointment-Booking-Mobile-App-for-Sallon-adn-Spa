import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';

class HomeSalonDisplayContainer extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final double rating;
  final double distance;

  const HomeSalonDisplayContainer({
    required this.image,
    required this.name,
    required this.address,
    required this.rating,
    required this.distance,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Palette.whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 120,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 5),
                Text(
                  address,
                  style: GoogleFonts.urbanist(
                    color: Palette.greyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Palette.blackColor,
                      size: 20,
                    ),
                    Text(
                      distance.toString() + ' Km',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
