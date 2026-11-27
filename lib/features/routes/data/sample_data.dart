import '../domain/models.dart';

const sampleStops = [
  // Mexico – Megenagna route
  Stop(
    id: 'mexico',
    name: 'Mexico Station',
    latitude: 9.00417,
    longitude: 38.753251,
    isPopular: true,
  ),
  Stop(
    id: 'legehar',
    name: 'Legehar',
    latitude: 9.01165,
    longitude: 38.75310,
  ),
  Stop(
    id: 'mazoria',
    name: '22 Mazoria',
    latitude: 9.01599,
    longitude: 38.78894,
  ),

  // Piassa – Megenagna route
  Stop(
    id: 'piassa',
    name: 'Piassa',
    latitude: 9.0337,
    longitude: 38.7548,
    isPopular: true,
  ),
  Stop(
    id: 'kilo4',
    name: '4 Kilo',
    latitude: 9.0329,
    longitude: 38.7634,
  ),
  Stop(
    id: 'kebena',
    name: 'Kebena',
    latitude: 9.0406,
    longitude: 38.7763,
  ),

  // Shared destination
  Stop(
    id: 'megenagna',
    name: 'Megenagna',
    latitude: 9.0196,
    longitude: 38.8017,
    isPopular: true,
  ),

  // Mexico – Bole route
  Stop(
    id: 'estifanos',
    name: 'Estifanos',
    latitude: 9.0122,
    longitude: 38.7636,
  ),
  Stop(
    id: 'dembel',
    name: 'Dembel City Center',
    latitude: 9.0047,
    longitude: 38.7669,
  ),
  Stop(
    id: 'bole',
    name: 'Bole',
    latitude: 9.0024,
    longitude: 38.7999,
    isPopular: true,
  ),

  // Megenagna – Ayat route
  Stop(
    id: 'gurd_shola',
    name: 'Gurd Shola',
    latitude: 9.0178,
    longitude: 38.8160,
  ),
  Stop(
    id: 'civil_service',
    name: 'Ethiopian Civil Service University',
    latitude: 9.0231,
    longitude: 38.8322,
  ),
  Stop(
    id: 'ayat',
    name: 'Ayat',
    latitude: 9.034573,
    longitude: 38.846056,
    isPopular: true,
  ),

  // Mexico – Ayertena routes
  Stop(
    id: 'tor_hayloch',
    name: 'Tor Hayloch',
    latitude: 9.0115,
    longitude: 38.7241,
  ),
  Stop(
    id: 'total3_mazoria',
    name: 'Total 3 Mazoria',
    latitude: 8.9927,
    longitude: 38.7172,
  ),
  Stop(
    id: 'sarbet',
    name: 'Sarbet',
    latitude: 8.9954,
    longitude: 38.7377,
  ),
  Stop(
    id: 'bisrate_gebriel',
    name: 'Bisrate Gebriel',
    latitude: 8.9919,
    longitude: 38.7264,
  ),
  Stop(
    id: 'ayertena',
    name: 'Ayertena',
    latitude: 8.983575,
    longitude: 38.697148,
    isPopular: true,
  ),
];

const sampleRoutes = [
  BusRoute(
    id: 'r1',
    name: 'Mexico – Megenagna (Anbessa)',
    type: TransportType.anbessa,
  ),
  BusRoute(
    id: 'r2',
    name: 'Piassa – Megenagna (Anbessa)',
    type: TransportType.anbessa,
  ),
  BusRoute(
    id: 'r3',
    name: 'Mexico – Bole (Anbessa)',
    type: TransportType.anbessa,
  ),
  BusRoute(
    id: 'r4',
    name: 'Megenagna – Ayat (Anbessa)',
    type: TransportType.anbessa,
  ),
  BusRoute(
    id: 'r5',
    name: 'Mexico – Ayertena (via Tor Hayloch) (Anbessa)',
    type: TransportType.anbessa,
  ),
  BusRoute(
    id: 'r6',
    name: 'Mexico – Ayertena (via Sarbet) (Anbessa)',
    type: TransportType.anbessa,
  ),
  BusRoute(
    id: 'r7',
    name: 'Mexico – Megenagna (Minibus)',
    type: TransportType.minibus,
  ),
  BusRoute(
    id: 'r8',
    name: 'Piassa – Megenagna (Minibus)',
    type: TransportType.minibus,
  ),
  BusRoute(
    id: 'r9',
    name: 'Mexico – Bole (Minibus)',
    type: TransportType.minibus,
  ),
  BusRoute(
    id: 'r10',
    name: 'Megenagna – Ayat (Minibus)',
    type: TransportType.minibus,
  ),
  BusRoute(
    id: 'r11',
    name: 'Mexico – Ayertena (via Tor Hayloch) (Minibus)',
    type: TransportType.minibus,
  ),
  BusRoute(
    id: 'r12',
    name: 'Mexico – Ayertena (via Sarbet) (Minibus)',
    type: TransportType.minibus,
  ),
];

const sampleRouteStops = [
  // r1: Mexico – Megenagna (Anbessa)
  RouteStop(routeId: 'r1', stopId: 'mexico', position: 0),
  RouteStop(routeId: 'r1', stopId: 'legehar', position: 1),
  RouteStop(routeId: 'r1', stopId: 'mazoria', position: 2),
  RouteStop(routeId: 'r1', stopId: 'megenagna', position: 3),

  // r2: Piassa – Megenagna (Anbessa)
  RouteStop(routeId: 'r2', stopId: 'piassa', position: 0),
  RouteStop(routeId: 'r2', stopId: 'kilo4', position: 1),
  RouteStop(routeId: 'r2', stopId: 'kebena', position: 2),
  RouteStop(routeId: 'r2', stopId: 'megenagna', position: 3),

  // r3: Mexico – Bole (Anbessa)
  RouteStop(routeId: 'r3', stopId: 'mexico', position: 0),
  RouteStop(routeId: 'r3', stopId: 'estifanos', position: 1),
  RouteStop(routeId: 'r3', stopId: 'dembel', position: 2),
  RouteStop(routeId: 'r3', stopId: 'bole', position: 3),

  // r4: Megenagna – Ayat (Anbessa)
  RouteStop(routeId: 'r4', stopId: 'megenagna', position: 0),
  RouteStop(routeId: 'r4', stopId: 'gurd_shola', position: 1),
  RouteStop(routeId: 'r4', stopId: 'civil_service', position: 2),
  RouteStop(routeId: 'r4', stopId: 'ayat', position: 3),

  // r5: Mexico – Ayertena (via Tor Hayloch) (Anbessa)
  RouteStop(routeId: 'r5', stopId: 'mexico', position: 0),
  RouteStop(routeId: 'r5', stopId: 'tor_hayloch', position: 1),
  RouteStop(routeId: 'r5', stopId: 'total3_mazoria', position: 2),
  RouteStop(routeId: 'r5', stopId: 'ayertena', position: 3),

  // r6: Mexico – Ayertena (via Sarbet) (Anbessa)
  RouteStop(routeId: 'r6', stopId: 'mexico', position: 0),
  RouteStop(routeId: 'r6', stopId: 'sarbet', position: 1),
  RouteStop(routeId: 'r6', stopId: 'bisrate_gebriel', position: 2),
  RouteStop(routeId: 'r6', stopId: 'total3_mazoria', position: 3),
  RouteStop(routeId: 'r6', stopId: 'ayertena', position: 4),

  // r7: Mexico – Megenagna (Minibus)
  RouteStop(routeId: 'r7', stopId: 'mexico', position: 0),
  RouteStop(routeId: 'r7', stopId: 'legehar', position: 1),
  RouteStop(routeId: 'r7', stopId: 'mazoria', position: 2),
  RouteStop(routeId: 'r7', stopId: 'megenagna', position: 3),

  // r8: Piassa – Megenagna (Minibus)
  RouteStop(routeId: 'r8', stopId: 'piassa', position: 0),
  RouteStop(routeId: 'r8', stopId: 'kilo4', position: 1),
  RouteStop(routeId: 'r8', stopId: 'kebena', position: 2),
  RouteStop(routeId: 'r8', stopId: 'megenagna', position: 3),

  // r9: Mexico – Bole (Minibus)
  RouteStop(routeId: 'r9', stopId: 'mexico', position: 0),
  RouteStop(routeId: 'r9', stopId: 'estifanos', position: 1),
  RouteStop(routeId: 'r9', stopId: 'dembel', position: 2),
  RouteStop(routeId: 'r9', stopId: 'bole', position: 3),

  // r10: Megenagna – Ayat (Minibus)
  RouteStop(routeId: 'r10', stopId: 'megenagna', position: 0),
  RouteStop(routeId: 'r10', stopId: 'gurd_shola', position: 1),
  RouteStop(routeId: 'r10', stopId: 'civil_service', position: 2),
  RouteStop(routeId: 'r10', stopId: 'ayat', position: 3),

  // r11: Mexico – Ayertena (via Tor Hayloch) (Minibus)
  RouteStop(routeId: 'r11', stopId: 'mexico', position: 0),
  RouteStop(routeId: 'r11', stopId: 'tor_hayloch', position: 1),
  RouteStop(routeId: 'r11', stopId: 'total3_mazoria', position: 2),
  RouteStop(routeId: 'r11', stopId: 'ayertena', position: 3),

  // r12: Mexico – Ayertena (via Sarbet) (Minibus)
  RouteStop(routeId: 'r12', stopId: 'mexico', position: 0),
  RouteStop(routeId: 'r12', stopId: 'sarbet', position: 1),
  RouteStop(routeId: 'r12', stopId: 'bisrate_gebriel', position: 2),
  RouteStop(routeId: 'r12', stopId: 'total3_mazoria', position: 3),
  RouteStop(routeId: 'r12', stopId: 'ayertena', position: 4),
];

final sampleFares = [
  Fare(
    routeId: 'r1',
    fromStopId: 'mexico',
    toStopId: 'megenagna',
    amountEtb: 20,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r2',
    fromStopId: 'piassa',
    toStopId: 'megenagna',
    amountEtb: 20,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r3',
    fromStopId: 'mexico',
    toStopId: 'bole',
    amountEtb: 15,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r4',
    fromStopId: 'megenagna',
    toStopId: 'ayat',
    amountEtb: 20,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r5',
    fromStopId: 'mexico',
    toStopId: 'ayertena',
    amountEtb: 20,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r6',
    fromStopId: 'mexico',
    toStopId: 'ayertena',
    amountEtb: 25,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r7',
    fromStopId: 'mexico',
    toStopId: 'megenagna',
    amountEtb: 30,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r8',
    fromStopId: 'piassa',
    toStopId: 'megenagna',
    amountEtb: 40,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r9',
    fromStopId: 'mexico',
    toStopId: 'bole',
    amountEtb: 30,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r10',
    fromStopId: 'megenagna',
    toStopId: 'ayat',
    amountEtb: 40,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r11',
    fromStopId: 'mexico',
    toStopId: 'ayertena',
    amountEtb: 40,
    checkedOn: DateTime(2026, 11, 26),
  ),
  Fare(
    routeId: 'r12',
    fromStopId: 'mexico',
    toStopId: 'ayertena',
    amountEtb: 50,
    checkedOn: DateTime(2026, 11, 26),
  ),
];
