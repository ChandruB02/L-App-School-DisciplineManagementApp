import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TeacherHomePage extends StatefulWidget {
  const TeacherHomePage({super.key});

  @override
  State<TeacherHomePage> createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> {
  final _storage = const FlutterSecureStorage();
  String? name;
  Uint8List? photoBytes;

  @override
  void initState() {
    super.initState();
    loadUserDetails();
  }

  Future<void> loadUserDetails() async {
    final storedName = await _storage.read(key: 'user_name');
    final storedPhotoBase64 = await _storage.read(key: 'user_photo');

    Uint8List? decodedPhoto;
    if (storedPhotoBase64 != null && storedPhotoBase64.isNotEmpty) {
      try {
        decodedPhoto = base64Decode(storedPhotoBase64);
      } catch (e) {
        debugPrint("Invalid base64 photo: $e");
      }
    }

    setState(() {
      name = storedName ?? 'Teacher';
      photoBytes = decodedPhoto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4), // Soft background
      body: SafeArea(
        child: Column(
          children: [
            // Top Profile Section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  // Welcome text
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                            fontSize: 20, color: Colors.white70),
                        children: [
                          const TextSpan(text: "Welcome "),
                          TextSpan(
                            text: "Mrs. ${name ?? ""}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      overflow: TextOverflow.ellipsis, // Prevent overflow
                    ),
                  ),

                  // Avatar
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: photoBytes != null
                        ? MemoryImage(photoBytes!)
                        : const AssetImage('assets/default_avatar.png')
                            as ImageProvider,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Styled Line Chart
            Container(
              height: 230,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50, // Chart background color
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: LineChart(
                LineChartData(
                  backgroundColor: Colors.blue.shade50, // Same as container
                  minX: 0,
                  maxX: 6,
                  minY: 0,
                  maxY: 6,
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                          showTitles: true,
                          interval: 1,
                          reservedSize: 30,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              value.toInt().toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            );
                          }),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                          showTitles: true,
                          interval: 1,
                          reservedSize: 40,
                          getTitlesWidget: (value, meta) {
                            return Text(
                              value.toInt().toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            );
                          }),
                    ),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  gridData: FlGridData(show: true),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 3),
                        FlSpot(1, 1),
                        FlSpot(2, 4),
                        FlSpot(3, 2),
                        FlSpot(4, 5),
                        FlSpot(5, 3),
                        FlSpot(6, 4),
                      ],
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 3,
                      dotData: FlDotData(show: true),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),

            // Bottom Buttons
            SizedBox(height: 20), // small gap between chart and buttons
// Buttons
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 8), // less vertical padding
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'My Class',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Create Incidents',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
