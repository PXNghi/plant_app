import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart'; // Chu y nham thu vien

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}