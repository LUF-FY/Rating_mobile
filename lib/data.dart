class Car {
  Cars? id;
  String name;
  String model;
  String image;

  Car(this.id, this.name, this.model, this.image);
}

final allData = <Car>[
  Car(
    Cars.BMW,
    'BMW',
    'X5 M Competition',
    'https://cdn-icons-png.flaticon.com/512/741/741460.png',
  ),
  Car(
    Cars.Toyota,
    'Toyota',
    'Highlander',
    'https://cdn-icons-png.flaticon.com/512/741/741403.png',
  ),
  Car(
    Cars.Volkswagen,
    'Volkswagen',
    'Polo',
    'https://cdn-icons-png.flaticon.com/512/741/741407.png',
  ),
  Car(
    Cars.Mazda,
    'Mazda',
    'Rx-7',
    'https://cdn-icons-png.flaticon.com/512/3774/3774278.png',
  ),
];

enum Cars { BMW, Toyota, Volkswagen, Mazda }

Cars? selectedCar = Cars.BMW;
