import 'package:flutter/material.dart';
import 'models/location.dart';
import 'location_detail.dart';
import 'styles.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'login_screen.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;
  final _storage = const FlutterSecureStorage();

  LocationList(this.locations, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await _storage.deleteAll(); // clear secure storage
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const LoginScreen()),
              );
            },
          )
        ],
        backgroundColor: const Color.fromARGB(255, 126, 84, 198),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: _listViewItemBuilder,
      ),
      backgroundColor: Colors.grey[100],
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    final location = locations[index];

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () => _navigateToLocationDetails(context, location),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              _itemThumbnail(location),
              const SizedBox(width: 15),
              Expanded(child: _itemTitle(location)),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToLocationDetails(BuildContext context, Location location) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LocationDetail(location)),
    );
  }

  Widget _itemThumbnail(Location location) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        location.url,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _itemTitle(Location location) {
    return Text(
      location.name,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }
}
