import 'package:flutter/material.dart';

class Mycounterscreenprovider with ChangeNotifier {
  int Quantity = 1;
  int price = 1000;
  int finalprice = 0;
  int get count => Quantity;




  void newprice() {
    if (Quantity == 1) {
      price = 1000;
    } else {
      price = price + 1000;
    }
    ;
  }

  void newp() {
    if (Quantity == 1) {
      price = 1000;
    } else {
      price = price - 1000;
    }
    ;
  }
  
  void incrementCounter() {
    Quantity++;
    newprice();
    notifyListeners();
  }

  void decrementcounter() {
    Quantity--;
    newp();
    notifyListeners();
  }
}