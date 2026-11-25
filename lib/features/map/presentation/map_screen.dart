import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key, this.routeId});
  final String? routeId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Map View')),
      body: Center(child: Text('Map View')),
    );
  }
}