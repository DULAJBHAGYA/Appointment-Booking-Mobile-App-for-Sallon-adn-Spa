import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';

class HomeUserInfoContainer extends StatelessWidget {
  const HomeUserInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.backgroundColor,
      ),
      height: 150,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Palette.whiteColor,
                    radius: 50,
                    backgroundImage: AssetImage(
                      'images/dp.jpg',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        child: Text(
                          'Hi! Miyuni',
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.urbanist(
                            color: Palette.blackColor,
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Palette.mainColor,
                            size: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '233, Kandy Rd, Peradeniya',
                            style: GoogleFonts.urbanist(
                              color: Palette.mainColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
