import 'package:flutter/material.dart';
import 'package:my_playing_ground/constants/color.dart';
import 'package:my_playing_ground/provider/item_change.dart';
import 'package:my_playing_ground/screens/detail_screen.dart';
import 'package:provider/provider.dart';

class GridSectionShow extends StatefulWidget {
  const GridSectionShow({
    super.key,
  });

  @override
  State<GridSectionShow> createState() => _GridSectionShowState();
}

class _GridSectionShowState extends State<GridSectionShow> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GridView.builder(
            itemCount: Provider.of<ItemChange>(context, listen: false)
                .shoesList
                .length,
            //itemCount: dummyData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              mainAxisExtent: 250.0,
            ),
            itemBuilder: (context, index) {
              bool isFav = Provider.of<ItemChange>(context, listen: false)
                  .shoesList[index]
                  .isFavorite;
              return GestureDetector(
                onTap: () {
                  Provider.of<ItemChange>(context, listen: false).updateProduct(
                      Provider.of<ItemChange>(context, listen: false)
                          .shoesList[index]);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DetailScreen(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF393E46),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEEEEE),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                            image: DecorationImage(
                              image: AssetImage(Provider.of<ItemChange>(context,
                                      listen: false)
                                  .shoesList[index]
                                  .urlImage!),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.topRight,
                            margin: const EdgeInsets.only(
                              top: 0,
                              right: 10,
                            ),
                            child: IconButton(
                              onPressed: () {
                                var activeItem;
                                setState(() {
                                  isClicked = !isClicked;
                                  if (isClicked) {
                                    activeItem = Provider.of<ItemChange>(
                                            context,
                                            listen: false)
                                        .shoesList[index];
                                    Provider.of<ItemChange>(context,
                                            listen: false)
                                        .shoesList[index]
                                        .isFavorite = isClicked;

                                    Provider.of<ItemChange>(context,
                                            listen: false)
                                        .updatefavList(activeItem);
                                  } else {
                                    activeItem = Provider.of<ItemChange>(
                                            context,
                                            listen: false)
                                        .shoesList[index];
                                    Provider.of<ItemChange>(context,
                                            listen: false)
                                        .removeFromfavList(activeItem);
                                    Provider.of<ItemChange>(context,
                                            listen: false)
                                        .shoesList[index]
                                        .isFavorite = isClicked;
                                  }
                                });
                              },
                              icon: Icon(
                                isFav
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFav ? Colors.red : kBackground,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            Provider.of<ItemChange>(context, listen: false)
                                .shoesList[index]
                                .name!,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xFFEEEEEE),
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            Provider.of<ItemChange>(context, listen: false)
                                .shoesList[index]
                                .category!,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "\$ " +
                                Provider.of<ItemChange>(context, listen: false)
                                    .shoesList[index]
                                    .price!
                                    .toString(),
                            style: const TextStyle(
                              color: Color(0xFFEEEEEE),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          alignment: Alignment.bottomCenter,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFD7014),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Color.fromARGB(255, 146, 127, 127),
                                ),
                                Text(
                                  "ADD TO CART",
                                  style: TextStyle(
                                    color: Color(0xFFEEEEEE),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                ),
              );
            }),
      ),
    );
  }
}
