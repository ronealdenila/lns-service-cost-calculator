import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/providers/category.dart';
import 'package:lns_service_cost_calculator/providers/service.dart';

List<Service> serviceDummyData = [
  Service(
    id: 's1',
    title: 'Digital Marketing & Consultation',
    image: 'assets/images/digital_marketing_consultation.jpg',
  ),
  Service(
    id: 's2',
    title: 'Customized System Development',
    image: 'assets/images/system_development.jpg',
  ),
  Service(
    id: 's3',
    title: 'Mobile Application Development',
    image: 'assets/images/mobile_app_development.jpg',
  ),
  Service(
    id: 's4',
    title: 'Domain Name and Web Hosting',
    image: 'assets/images/web_hosting.jpg',
  ),
  Service(
    id: 's5',
    title: 'E-Commerce Store Development',
    image: 'assets/images/e_commerce_store_development.jpg',
  ),
];

List<Category> categoryDummyData = [
  Category(
    id: 'c1',
    title: 'SERVICE APP',
    price: 100,
    icon: Icons.construction,
  ),
  Category(
    id: 'c2',
    title: 'BOOKING APP',
    price: 200,
    icon: Icons.airplanemode_on_outlined,
  ),
  Category(
    id: 'c3',
    title: 'SOCIAL NETWORKING APP',
    price: 300,
    icon: Icons.people,
  ),
  Category(
    id: 'c4',
    title: 'E-COMMERCE APP',
    price: 300,
    icon: Icons.shopping_cart,
  ),
  Category(
    id: 'c5',
    title: 'EDUCATION AND E-LEARNING APP',
    price: 300,
    icon: Icons.book,
  ),
  Category(
    id: 'c6',
    title: 'BANK APP',
    price: 300,
    icon: Icons.account_balance,
  ),
];

List<Category> screensOptionDummyData = [
  Category(
    id: 'a1',
    title: '5 SCREENS',
    price: 100,
    icon: Icons.file_copy,
  ),
  Category(
    id: 'a2',
    title: '6-10 SCREENS',
    price: 100,
    icon: Icons.file_copy,
  ),
  Category(
    id: 'a3',
    title: '11-15 SCREENS',
    price: 100,
    icon: Icons.file_copy,
  ),
  Category(
    id: 'a4',
    title: '16-20 SCREENS',
    price: 100,
    icon: Icons.file_copy,
  ),
  Category(
    id: 'a5',
    title: '21-25 SCREENS',
    price: 100,
    icon: Icons.file_copy,
  ),
  Category(
    id: 'a6',
    title: 'ABOVE 25 SCREENS',
    price: 100,
    icon: Icons.file_copy,
  ),
];
