class CoffeeModel {
  final String name;
  final String size;
  final int energyKJ;
  final int energyKCal;
  final double fat;
  final double saturatedFat;
  final double carbohydrates;
  final double sugar;
  final double fibre;
  final double protein;
  final double salt;
  final double caffeine;

  CoffeeModel({
    required this.name,
    required this.size,
    required this.energyKJ,
    required this.energyKCal,
    required this.fat,
    required this.saturatedFat,
    required this.carbohydrates,
    required this.sugar,
    required this.fibre,
    required this.protein,
    required this.salt,
    required this.caffeine,
  });

  factory CoffeeModel.fromJson(Map<String, dynamic> json) {
    return CoffeeModel(
      name: json['name'],
      size: json['size'],
      energyKJ: json['energyKJ'],
      energyKCal: json['energyKCal'],
      fat: json['fat'],
      saturatedFat: json['saturatedFat'],
      carbohydrates: json['carbohydrates'],
      sugar: json['sugar'],
      fibre: json['fibre'],
      protein: json['protein'],
      salt: json['salt'],
      caffeine: json['caffeine'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'size': size,
        'energyKJ': energyKJ,
        'energyKCal': energyKCal,
        'fat': fat,
        'saturatedFat': saturatedFat,
        'carbohydrates': carbohydrates,
        'sugar': sugar,
        'fibre': fibre,
        'protein': protein,
        'salt': salt,
        'caffeine': caffeine,
      };
}
