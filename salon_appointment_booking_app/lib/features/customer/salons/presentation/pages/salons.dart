import 'package:flutter/material.dart';
import 'package:salon_appointment_booking_app/core/theme/palette.dart';
import 'package:salon_appointment_booking_app/core/widgets/search_bar.dart';
import 'package:salon_appointment_booking_app/features/customer/home/data/dataSources/local%20data/salon_data.dart';
import 'package:salon_appointment_booking_app/features/customer/salons/presentation/widgets/salon_display_widget.dart';

class Salons extends StatefulWidget {
  const Salons({super.key});

  @override
  State<Salons> createState() => _SalonsState();
}

class _SalonsState extends State<Salons> {
  List<dynamic> _salons = SalonsData.salons;
  List<dynamic> _filteredSalons = SalonsData.salons;
  final TextEditingController _searchController = TextEditingController();

  void _filterSalons() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredSalons = _salons.where((salon) {
        final name = salon['name'].toLowerCase();
        final address = salon['address'].toLowerCase();
        return name.contains(query) || address.contains(query);
      }).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterSalons);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterSalons);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.backgroundColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.menu,
            color: Palette.mainColor,
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Salons',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 20),
              CustomSearchBar(
                controller: _searchController,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: _filteredSalons.map((salon) {
                      return Column(
                        children: [
                          SalonDisplayWidget(
                            image: salon['image'],
                            name: salon['name'],
                            rating: salon['rating'],
                            distance: salon['distance'],
                            email: salon['email'],
                            contact: salon['contact'],
                            address: salon['address'],
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
