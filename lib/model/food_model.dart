class FoodModel {
  String image;
  String name;
  FoodModel({required this.image, required this.name});
  static List<FoodModel> foodList = [
    FoodModel(image: "assets/Rectangle 7(1).png", name: "pizza"),
    FoodModel(image: "assets/Rectangle 7(2).png", name: "Burger"),
    FoodModel(image: "assets/Rectangle 7(4).png", name: "Noodles"),
    FoodModel(image: "assets/veg.png", name: "Healthy"),
  ];
}
