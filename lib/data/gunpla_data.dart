import '../models/gunpla.dart';


final List<Gunpla> gunplaList = [
  Gunpla(
    id: 1,
    name: "Infinite Justice Gundam",
    grade: "MG",
    imagePaths: ["assets/images/gp1/cover01.jpg",
    "assets/images/gp1/cover011.jpg"],
    status: "Assembled",
    price: 2000,
    purchaseDate: DateTime(2023, 1, 15),
    assembledDate: DateTime(2023, 2, 10),
  ),
  Gunpla(
    id: 2,
    name: "Nu Gundam Ver.Ka",
    grade: "MG",
    imagePaths: ["assets/images/gp2/cover02.jpg",
    "assets/images/gp2/cover02.jpg"],
    status: "Unassembled",
    price: 2400,
    purchaseDate: DateTime(2023, 1, 15),
    assembledDate: null,
  ),
  Gunpla(
    id: 3,
    name: "Wing Gundam Ver.Ka",
    grade: "MG",
    imagePaths: [
      "assets/images/gp3/cover03.jpg"
    ],
    status: "Assembled",
    price: 1500,
    purchaseDate: DateTime(2023, 1, 15),
    assembledDate: DateTime(2023, 2, 10),
  ),
];
