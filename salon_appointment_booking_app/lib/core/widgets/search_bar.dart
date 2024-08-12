import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const CustomSearchBar({
    required this.controller,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Palette.whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(
            Iconsax.search_normal,
            size: 20,
            color: Palette.greyColor,
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: 'search here',
                hintStyle: GoogleFonts.urbanist(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Palette.greyColor),
                border: InputBorder.none,
              ),
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Palette.greyColor),
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: Palette.backgroundColor,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Iconsax.filter_add,
                size: 20,
                color: Palette.greyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
