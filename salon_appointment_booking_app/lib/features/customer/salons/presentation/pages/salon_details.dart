import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';

class SalonDetails extends StatefulWidget {
  final String image;
  final String name;
  final double rating;
  final double distance;
  final String email;
  final String contact;
  final String address;

  const SalonDetails({
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
  State<SalonDetails> createState() => _SalonDetailsState();
}

class _SalonDetailsState extends State<SalonDetails> {
  late double _rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Palette.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Iconsax.arrow_left_2,
                          color: Palette.blackColor,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: Palette.blackColor,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '${widget.rating}',
                              style: TextStyle(
                                fontSize: 60,
                                color: Palette.blackColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            PannableRatingBar(
                              rate: widget.rating,
                              items: List.generate(
                                  5,
                                  (index) => const RatingWidget(
                                        selectedColor: Palette.ratingColor,
                                        unSelectedColor: Palette.greyColor,
                                        child: Icon(
                                          Icons.star,
                                          size: 20,
                                        ),
                                      )),
                              onChanged: (value) {
                                setState(() {
                                  _rating = widget.rating;
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Iconsax.location,
                                  color: Palette.blackColor,
                                  size: 20,
                                ),
                                Text(
                                  widget.address,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200,
                                    color: Palette.blackColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${widget.contact}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                color: Palette.blackColor,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${widget.email}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                color: Palette.blackColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${widget.distance} km away',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, 0);

    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 30);
    final lastCurve = Offset(40, size.height - 30);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondCurve = Offset(size.width - 40, size.height - 30);
    final thirdCurve = Offset(size.width - 40, size.height - 30);
    path.quadraticBezierTo(
        secondCurve.dx, secondCurve.dy, thirdCurve.dx, thirdCurve.dy);

    final lastCurve2 = Offset(size.width, size.height - 30);
    final firstCurve2 = Offset(size.width, size.height);
    path.quadraticBezierTo(
        lastCurve2.dx, lastCurve2.dy, firstCurve2.dx, firstCurve2.dy);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
