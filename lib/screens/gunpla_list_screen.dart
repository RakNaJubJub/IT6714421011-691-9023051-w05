import 'package:flutter/material.dart';
import '../data/gunpla_data.dart';
import 'gunpla_detail_screen.dart';


class GunplaListScreen extends StatelessWidget {
  const GunplaListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gunpla Collection")),
      body: ListView.builder(
        itemCount: gunplaList.length,
        itemBuilder: (context, index) {
          final gunpla = gunplaList[index];
          return ListTile(
            leading: Image.asset(gunpla.imagePaths[0]),
            title: Text(gunpla.name),
            subtitle: Text("${gunpla.grade} • ${gunpla.status}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => GunplaDetailScreen(gunpla: gunpla),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
