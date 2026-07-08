class Gunpla {
  final int id;
  final String name;
  final String grade;
  final List<String> imagePaths;
  final String status;
  final int price;
  final DateTime purchaseDate;
  final DateTime? assembledDate;


  Gunpla({
    required this.id,
    required this.name,
    required this.grade,
    required this.imagePaths,
    required this.status,
    required this.price,
    required this.purchaseDate,
    this.assembledDate,
  });
}
