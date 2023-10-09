import 'package:flutter/material.dart';
import 'package:my_playing_ground/provider/item_change.dart';
import 'package:my_playing_ground/screens/root_screen.dart';
import 'package:my_playing_ground/widgets/cart_card.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemChange>(context, listen: false);
    // bool isClicked = false;
    // //int quantity = 1;
    // double itemPrice = 0;

    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Bag',
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RootScreen())),
            child: const Icon(Icons.arrow_back, color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 15.0),
            child: Text(
              Provider.of<ItemChange>(context).cartCounter.toString() +
                  " items",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView(children: [
          ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: Provider.of<ItemChange>(context).shoesCartList.length,
              itemBuilder: (context, index) {
                final item = Provider.of<ItemChange>(context, listen: false)
                    .shoesCartList[index]
                    .name;
                final price = Provider.of<ItemChange>(context, listen: false)
                    .shoesCartList[index]
                    .price;
                return Dismissible(
                  key: Key(item.toString()),
                  background: Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFD7014),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Icon(
                      Icons.delete_outlined,
                      size: 70,
                      color: Color(0xFFEEEEEE),
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      itemProvider.shoesCartList.removeAt(index);
                      itemProvider.updateCartCounter();
                      itemProvider.subtractFromTotalPrice(price!);
                      if (itemProvider.shoesCartList.isEmpty) {
                        itemProvider.totalPrice = 0;
                      }
                    });
                  },
                  direction: DismissDirection.endToStart,
                  child: CartCard(itemProvider: itemProvider, index: index),
                );
              }),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ " +
                        Provider.of<ItemChange>(context, listen: false)
                            .totalPrice
                            .toString(),
                    style: const TextStyle(
                      color: Color(0xFFEEEEEE),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFD7014),
                    ),
                    child: const Center(
                      child: Text(
                        "CHEKCOUT",
                        style: TextStyle(
                          color: Color(0xFFEEEEEE),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
