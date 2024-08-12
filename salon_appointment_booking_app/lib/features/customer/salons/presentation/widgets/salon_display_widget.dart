import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';
import 'package:salon_appointment_booking_app/features/customer/salons/presentation/pages/salon_details.dart';

class SalonDisplayWidget extends StatelessWidget {
  final String image;
  final String name;
  final double rating;
  final double distance;
  final String email;
  final String contact;
  final String address;

  const SalonDisplayWidget({
    required this.image,
    required this.address,
    required this.contact,
    required this.email,
    required this.distance,
    required this.name,
    required this.rating,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Palette.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Palette.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 200,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SalonDetails(
                                        image: image,
                                        address: address,
                                        contact: contact,
                                        email: email,
                                        distance: distance,
                                        name: name,
                                        rating: rating,
                                      )));
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Palette.whiteColor,
                          minimumSize: Size.zero,
                          padding: const EdgeInsets.all(10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                              color: Palette.mainColor,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('View Details',
                                style: GoogleFonts.urbanist(
                                  color: Palette.mainColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                )),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.arrow_forward,
                              size: 15,
                              color: Palette.mainColor,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        name,
                        style: GoogleFonts.urbanist(
                          color: Palette.blackColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Rating $rating',
                        style: GoogleFonts.urbanist(
                          color: Palette.blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        address,
                        style: GoogleFonts.urbanist(
                          color: Palette.greyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        distance.toString() + ' km away',
                        style: GoogleFonts.urbanist(
                          color: Palette.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
