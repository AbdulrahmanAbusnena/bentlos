import 'product.dart';
import 'package:flutter/material.dart';

class EApp extends ChangeNotifier {
  final List<Products> _shop = [
    Products(
        name: 'Jacket',
        description: '''
        type: Jacket for Males  
        Size: 15, 
        Status: Available,  
        122 Available 
        ''',
        imagepath: 'assets/jacket.png',   
        price: '£24.5'),
    Products(
        name: 'LVs Bag',
        description: ''' 
        type: Luis Vuiton Bag  
        Status: Available,  
        2 Available 
        ''',
        imagepath: 'assets/backpack.png',
        price: '£5460'),
    Products(
        name: 'Iphone 15 pm ',
        description: ''' 
        type: Iphone 15 pro Max 
        Color: White, 
        Status: Available,  
        28 Available 
        ''',
        imagepath: 'assets/iphone.png',
        price: '£1099'),
    Products(
        name: 'Stickers',
        description: 'Anime Stickers',
        imagepath: 'assets/sticker.jpg',
        price: '£2.0'),
  ];
  // get cart
  final List<Products> _usercart = [];

  // get to shop
  List<Products> get shop => _shop;
  // get to cart
  List<Products> get cart => _usercart;
  // add to cart
  void addToCart(Products products) {
    _usercart.add(products);
    notifyListeners();
  }

  // remove from cart
  void removefromCart(Products products) {
    _usercart.remove(products);
    notifyListeners();
  }
}
