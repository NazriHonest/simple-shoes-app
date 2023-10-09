 import 'package:flutter/material.dart';

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({super.key, required this.itemProvider, required this.index});

  // ignore: prefer_typing_uninitialized_variables
  final itemProvider;

  final int index;

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  @override
  Widget build(BuildContext context) {
    // double itemPrice = 0;
    // bool isClicked = false;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF393E46),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(left: 15, bottom: 15),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 144,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(widget
                      .itemProvider.favoriteShoesList[widget.index].urlImage!),
                  fit: BoxFit.cover),
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.itemProvider.favoriteShoesList[widget.index].name!,
                  style: const TextStyle(
                    color: Color(0xFFEEEEEE),
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.itemProvider.favoriteShoesList[widget.index].category!,
                  style: const TextStyle(
                    color: Color(0xFFEEEEEE),
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // int quantity = widget
                        //     .itemProvider.shoesCartList[widget.index].qty!;
                        // itemPrice = widget
                        //     .itemProvider.shoesCartList[widget.index].price!;
                        // quantity--;
                        // double newPrice = quantity * itemPrice;

                        // widget.itemProvider.subtractFromTotalPrice(newPrice);

                        // setState(() {
                        //   //isClicked = true;
                        //   widget.itemProvider.shoesCartList[widget.index]
                        //       .price = newPrice;
                        // });
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Color(0xFF222831),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      //Provider.of<ItemChange>(context, listen: false).shoesCartList[widget.index].qty.toString(),
                      widget.itemProvider.favoriteShoesList[widget.index].qty
                          .toString(),
                      style: const TextStyle(
                        color: Color(0xFFEEEEEE),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        // int quantity = widget
                        //     .itemProvider.shoesCartList[widget.index].qty!;
                        // itemPrice = widget
                        //     .itemProvider.shoesCartList[widget.index].price!;
                        // double newPrice = quantity * itemPrice;

                        // isClicked
                        //     ? widget.itemProvider.calculateTotalPrice(newPrice)
                        //     : widget.itemProvider.calculateTotalPrice(widget
                        //         .itemProvider
                        //         .shoesCartList[widget.index]
                        //         .price!);

                        // setState(() {
                        //   isClicked = true;
                        //   widget.itemProvider.shoesCartList[widget.index]
                        //       .price = newPrice;
                        //   widget.itemProvider.shoesCartList[widget.index].qty! +
                        //       1;
                        // });
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF222831),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "\$ " +
                      widget.itemProvider.favoriteShoesList[widget.index].price!
                          .toString(),
                  style: const TextStyle(
                    color: Color(0xFFEEEEEE),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
