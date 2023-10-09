import 'package:flutter/material.dart';
import 'package:my_playing_ground/provider/item_change.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int activeSize = 0;
  bool isClicked = false;
  

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemChange>(context, listen: false);
    //bool isFav =
      //Provider.of<ItemChange>(context, listen: false).activeProduct!.isFavorite;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF222831),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 260,
                decoration: const BoxDecoration(
                  color: Color(0xFF393E46),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                    )
                  ],
                ),
                child: Stack(children: [
                  Positioned(
                      top: 10,
                      left: 15,
                      right: 15,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.arrow_back,
                                color: Color(0xFFEEEEEE),
                              ),
                            ),
                            const Text(
                              "DETAILS",
                              style: TextStyle(
                                color: Color(0xFFEEEEEE),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // IconButton(
                            //   onPressed: () {
                            //     var activeItem;
                            //     setState(() {
                            //       isClicked = !isClicked;
                            //       if (isClicked) {
                            //         activeItem = Provider.of<ItemChange>(
                            //                 context,
                            //                 listen: false)
                            //             .activeProduct;
                            //         Provider.of<ItemChange>(context,
                            //                 listen: false)
                            //             .activeProduct!
                            //             .isFavorite = true;

                            //         Provider.of<ItemChange>(context,
                            //                 listen: false)
                            //             .favoriteShoesList
                            //             .add(activeItem!);
                            //       } else {
                            //         activeItem = Provider.of<ItemChange>(
                            //                 context,
                            //                 listen: false)
                            //             .favoriteShoesList
                            //             .remove(activeItem!);
                            //         Provider.of<ItemChange>(context,
                            //                 listen: false)
                            //             .activeProduct!
                            //             .isFavorite = false;
                            //       }
                            //     });
                            //   },
                            //   icon: Icon(
                            //     isFav
                            //         ? Icons.favorite
                            //         : Icons.favorite_border_outlined,
                            //     color: isFav
                            //         ? Colors.red
                            //         : const Color(0xFFEEEEEE),
                            //   ),
                            // ),
                          ],),),
                  Positioned(
                    top: 60,
                    left: 40,
                    right: 40,
                    bottom: 20,
                    child: Container(
                      width: 279,
                      height: 304,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5.0,
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage(
                              Provider.of<ItemChange>(context, listen: false)
                                  .activeProduct!
                                  .urlImage!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      Provider.of<ItemChange>(context, listen: false)
                          .activeProduct!
                          .images!
                          .length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10.0),
                      child: Container(
                        width: 150,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(Provider.of<ItemChange>(context,
                                      listen: false)
                                  .activeProduct!
                                  .images![index]),
                              fit: BoxFit.cover,
                              scale: 2),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Provider.of<ItemChange>(context, listen: false)
                            .activeProduct!
                            .name!,
                        style: const TextStyle(
                          color: Color(0xFFEEEEEE),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                      Text(
                        "\$ " +
                            Provider.of<ItemChange>(context, listen: false)
                                .activeProduct!
                                .price!
                                .toString(),
                        style: const TextStyle(
                          color: Color(0xFFEEEEEE),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description:",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFEEEEEE),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      itemProvider.activeProduct!.description!,
                      style: const TextStyle(
                        color: Color(0xFF9E9A9A),
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  //vertical: 15.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sizes:",
                      style: TextStyle(
                        color: Color(0xFFEEEEEE),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            itemProvider.activeProduct!.size!.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: GestureDetector(
                              onTap: () => setState(() {
                                activeSize = index;
                              }),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFEEEEEE)),
                                  color: activeSize == index
                                      ? const Color(0xFFEEEEEE)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Center(
                                  child: Text(
                                    itemProvider.activeProduct!.size![index],
                                    style: TextStyle(
                                      color: activeSize == index
                                          ? Colors.black
                                          : const Color(0xFFEEEEEE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        itemProvider.shoesCartList
                            .add(itemProvider.activeProduct!);
                        itemProvider.updateCartCounter();
                        itemProvider.calculateTotalPrice(
                            itemProvider.activeProduct!.price!);
                      },
                      child: Center(
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFFD7014),
                          ),
                          child: const Center(
                              child: Text(
                            "ADD TO CART",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
