import 'package:flutter/material.dart';

class RouteDetailsScreen extends StatelessWidget {
  const RouteDetailsScreen({super.key, required this.routeId});
  final String routeId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route Details')),
      body: Center(child: Text('Route Details $routeId')),
    );
  }
}