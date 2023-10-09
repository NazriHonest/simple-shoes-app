import 'package:flutter/material.dart';
import 'package:my_playing_ground/constants/dummyData.dart';
import 'package:my_playing_ground/models/modal.dart';

class ItemChange extends ChangeNotifier {
  List<Shoes> shoesList = dummyData;
  List<Shoes> shoesCartList = [];
  List<Shoes> favoriteShoesList = [];

  double totalPrice = 0;

  Shoes? activeProduct;
  int cartCounter = 0;

  void calculateTotalPrice(double price) {
    totalPrice += price;
    notifyListeners();
  }

  void subtractFromTotalPrice(double price) {
    totalPrice -= price;
    notifyListeners();
  }

  void updateCartCounter() {
    cartCounter = shoesCartList.length;
    notifyListeners();
  }

  void updateProduct(Shoes shoes) {
    activeProduct = shoes;
    notifyListeners();
  } 

  void updatefavList(Shoes shoes) {
    favoriteShoesList.add(shoes);
    notifyListeners();
  } 

  void removeFromfavList(Shoes shoes) {
    favoriteShoesList.remove(shoes);
    notifyListeners();
  } 
}
