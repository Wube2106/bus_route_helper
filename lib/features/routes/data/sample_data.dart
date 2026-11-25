import '../domain/models.dart';

const sampleStops = [
  Stop(id: 'mexico', name: 'Mexico', latitude: 9.0107, longitude: 38.7469, isPopular: true),
  Stop(id: 'piassa', name: 'Piassa', latitude: 9.0348, longitude: 38.7511, isPopular: true),
  Stop(id: 'merkato', name: 'Merkato', latitude: 9.0357, longitude: 38.7396, isPopular: true),
  Stop(id: 'megenagna', name: 'Megenagna', latitude: 9.0204, longitude: 38.8003, isPopular: true),
  Stop(id: 'bole', name: 'Bole', latitude: 8.9955, longitude: 38.7857, isPopular: true),
  Stop(id: 'stop2', name: 'Stop 2', latitude: 9.0150, longitude: 38.7600),
  Stop(id: 'stop3', name: 'Stop 3', latitude: 9.0180, longitude: 38.7800),
];

const sampleRoutes = [
  BusRoute(id: 'r1', name: 'Mexico – Megenagna', type: TransportType.minibus),
  BusRoute(id: 'r2', name: 'Piassa – Megenagna', type: TransportType.anbessa),
  BusRoute(id: 'r3', name: 'Merkato – Bole', type: TransportType.minibus),
];

const sampleRouteStops = [
  RouteStop(routeId: 'r1', stopId: 'mexico', position: 0),
  RouteStop(routeId: 'r1', stopId: 'stop2', position: 1),
  RouteStop(routeId: 'r1', stopId: 'stop3', position: 2),
  RouteStop(routeId: 'r1', stopId: 'megenagna', position: 3),
  RouteStop(routeId: 'r2', stopId: 'piassa', position: 0),
  RouteStop(routeId: 'r2', stopId: 'mexico', position: 1),
  RouteStop(routeId: 'r2', stopId: 'stop3', position: 2),
  RouteStop(routeId: 'r2', stopId: 'megenagna', position: 3),
  RouteStop(routeId: 'r3', stopId: 'merkato', position: 0),
  RouteStop(routeId: 'r3', stopId: 'mexico', position: 1),
  RouteStop(routeId: 'r3', stopId: 'bole', position: 2),
];

final sampleFares = [
  Fare(routeId: 'r1', fromStopId: 'mexico', toStopId: 'megenagna', amountEtb: 12, checkedOn: DateTime(2026, 11, 20)),
  Fare(routeId: 'r2', fromStopId: 'mexico', toStopId: 'megenagna', amountEtb: 8, checkedOn: DateTime(2026, 11, 20)),
  Fare(routeId: 'r2', fromStopId: 'piassa', toStopId: 'megenagna', amountEtb: 10, checkedOn: DateTime(2026, 11, 20)),
  Fare(routeId: 'r3', fromStopId: 'merkato', toStopId: 'bole', amountEtb: 15, checkedOn: DateTime(2026, 11, 20)),
  Fare(routeId: 'r3', fromStopId: 'mexico', toStopId: 'bole', amountEtb: 10, checkedOn: DateTime(2026, 11, 20)),
];