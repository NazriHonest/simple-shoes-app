// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:my_playing_ground/models/modal.dart';

List<Shoes> dummyData = [
  Shoes(
    name: "Nike React Phantom",
    price: 250.00,
    qty: 1,
    category: "Men's Running Shoe",
    description:
        'The Nike React Phantom Run Flyknit 2 offers versatility for the everyday runner. Building on the foundation of its predecessor, the shoe expands on its laceless design by adding secure support that feels like it "disappears" on your foot. More foam means better cushioning, keeping you comfortable as you run.',
    urlImage: "assets/images/Nikereak1.jpg",
    images: [
      "assets/images/Nikereak1.jpg",
      "assets/images/Nikereak2.jpg",
      "assets/images/Nikereak3.jpg",
      "assets/images/Nikereak4.jpg",
    ],
    size: ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5", "10", "10.5"],
  ),
  Shoes(
    name: "Nike Air Max 2090",
    price: 399.00,
    qty: 1,
    category: "Men's Shoe",
    description:
        'Bring the past into the future with the Nike Air Max 2090, a bold look inspired by the DNA of the iconic Air Max 90. Brand-new Nike Air cushioning underfoot adds unparalleled comfort while transparent mesh and vibrantly coloured details on the upper are blended with timeless OG features for an edgy, modernised look.',
    urlImage: "assets/images/nikeairmax1.jpg",
    images: [
      "assets/images/nikeairmax1.jpg",
      "assets/images/nikeairmax2.jpg",
      "assets/images/nikeairmax3.jpg",
      "assets/images/nikeairmax4.jpg",
    ],
    size: ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5", "10", "10.5"],
  ),
  Shoes(
    name: "Nike Metcon 5",
    price: 350.00,
    qty: 1,
    category: "Men's Training Shoe",
    description:
        'The Nike Metcon 5 is our most tuned Metcon yet. This means specific stability for heavy lifting, traction made for speed and durability where you need it. It even includes a Hyperlift insert that`s compatible with all prior versions of the Metcon. Meet your secret weapon for weight-lifting and high-impact training.',
    urlImage: "assets/images/metcon1.jpg",
    images: [
      "assets/images/metcon1.jpg",
      "assets/images/metcon2.jpg",
      "assets/images/metcon3.jpg",
      "assets/images/metcon4.jpg",
    ],
    size: ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5", "10", "10.5"],
  ),
  Shoes(
    name: "Nike Benassi",
    price: 150.00,
    qty: 1,
    category: "Slide",
    description:
        'The Nike Benassi Slide features a lined upper with a bold logo for plush comfort and an athletic look. A foam midsole and outsole provide lightweight impact protection.',
    urlImage: "assets/images/benassi1.png",
    images: [
      "assets/images/benassi1.png",
      "assets/images/benassi2.jpg",
      "assets/images/benassi3.jpg",
    ],
    size: ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5", "10", "10.5"],
  ),
  Shoes(
    name: "LeBron 17 Low",
    price: 250.00,
    qty: 1,
    category: "Basketball Shoe",
    description:
        'Fine-tuned with LeBron`s ferocious game in mind, the LeBron 17 Low has a sleek, low-top design that features a powerful combination of impact-ready cushioning and responsiveness.',
    urlImage: "assets/images/lebron1.jpg",
    images: [
      "assets/images/lebron1.jpg",
      "assets/images/lebron2.jpg",
      "assets/images/lebron3.jpg",
      "assets/images/lebron4.jpg",
    ],
    size: ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5", "10", "10.5"],
  ),
  Shoes(
    name: "Nike SB Blazer Low GT",
    price: 400.00,
    qty: 1,
    category: "Skate Shoe",
    description:
        'The Nike SB Blazer Low GT pairs a supportive feel with lightweight, responsive cushioning for everyday use. Just like Grant Taylor, it blends contemporary style with old-school traditions.',
    urlImage: "assets/images/blazer1.jpg",
    images: [
      "assets/images/blazer1.jpg",
      "assets/images/blazer2.jpg",
      "assets/images/blazer3.jpg",
      "assets/images/blazer4.jpg",
    ],
    size: ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5", "10", "10.5"],
  ),
  Shoes(
    name: "Jordan Max 200",
    price: 400.00,
    qty: 1,
    category: "Men's Shoe",
    description:
        'With design elements inspired by the Air Jordan 4, the Jordan Max 200 brings a new level of Air to Jordan, for details anchored in legacy and comfort made for the future.',
    urlImage: "assets/images/jordanmax1.jpg",
    images: [
      "assets/images/jordanmax1.jpg",
      "assets/images/jordanmax2.jpg",
      "assets/images/jordanmax3.jpg",
      "assets/images/jordanmax4.jpg",
    ],
    size: ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5", "10", "10.5"],
  ),
];

List<Map<String,dynamic>> bottomNavItems  = [
  {
    "label": "Home",
    "icon": Icons.home_outlined, 
  },
  {
    "label": "Favorite",
    "icon": Icons.favorite_border, 
  },
  {
    "label": "Cart",
    "icon": Icons.shopping_cart_outlined,
  },
  {
    "label": "User",
    "icon": Icons.person_outline_outlined,
  }
];
