import 'package:flutter/material.dart';
import 'package:my_playing_ground/constants/color.dart';
import 'package:my_playing_ground/provider/item_change.dart';
import 'package:my_playing_ground/widgets/favorite_card.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemChange>(context, listen: false);
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: Provider.of<ItemChange>(context).favoriteShoesList.length,
              itemBuilder: (context, index) {
                final item = Provider.of<ItemChange>(context, listen: false)
                    .favoriteShoesList[index]
                    .name;
                // // price = Provider.of<ItemChange>(context, listen: false)
                //     .favoriteShoesList[index]
                //     .price;
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
                      itemProvider.favoriteShoesList.removeAt(index);
                      // itemProvider.updateCartCounter();
                      // itemProvider.subtractFromTotalPrice(price!);
                      // if (itemProvider.favoriteShoesList.isEmpty) {
                      //   itemProvider.totalPrice = 0;
                      // }
                    });
                  },
                  direction: DismissDirection.endToStart,
                  child: FavoriteCard(itemProvider: itemProvider, index: index),
                );
              }),
      ),
    );
  }
}