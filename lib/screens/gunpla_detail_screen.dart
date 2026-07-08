import 'package:flutter/material.dart';
import '../models/gunpla.dart';
import 'package:intl/intl.dart';


class GunplaDetailScreen extends StatelessWidget {
  final Gunpla gunpla;
  void _showFullImage(BuildContext context, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: InteractiveViewer(child: Image.asset(imagePath)),
            ),
          );
        },
      ),
    );
  }



  const GunplaDetailScreen({super.key, required this.gunpla});


  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('yyyy-MM-dd');


    return Scaffold(
      appBar: AppBar(title: Text("${gunpla.id}-${gunpla.name}")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "ID: ${gunpla.id}",
              style: const TextStyle(color: Colors.grey),
            ),
            Text(
              "Grade: ${gunpla.grade}",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "Status: ${gunpla.status}",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "Purchase Date: ${dateFormat.format(gunpla.purchaseDate)}",
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "Assembled Date: ${gunpla.assembledDate != null ? dateFormat.format(gunpla.assembledDate!) : "Not assembled"}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gunpla.imagePaths.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap:
                        () => _showFullImage(context, gunpla.imagePaths[index]),
                    child: Image.asset(
                      gunpla.imagePaths[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
