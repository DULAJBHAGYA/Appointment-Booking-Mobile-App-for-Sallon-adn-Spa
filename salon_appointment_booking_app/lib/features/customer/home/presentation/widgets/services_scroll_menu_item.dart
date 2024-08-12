import 'package:flutter/material.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';

class ServicesScrollMenuItem extends StatelessWidget {
  final String title;
  final String image;

  const ServicesScrollMenuItem({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Palette.mainColor,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
