import 'package:flutter/material.dart';
import 'package:my_playing_ground/provider/item_change.dart';
import 'package:my_playing_ground/screens/cart_screen.dart';
import 'package:provider/provider.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: const BoxDecoration(
        color: Color(0xFF393E46),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      
      child: Stack(
        children: [
          Positioned(
            top: 40,
            right: 25,
            width: 40,
            height: 40,
            child: GestureDetector(
              onTap: (){
                //Provider.of<ItemChange>(context, listen: false).updateCartCounter();
                Navigator.push(context, MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_){
                  return const CartScreen();
                } ),);
              },
              child: Stack(
                children: [
                  const Positioned(
                    top: 14,
                    child: Icon(
                      Icons.shopping_cart_outlined, 
                      color: Colors.white,
                      size: 32,),
                    ),
                  Positioned(
                    right: 12,
                    child: Text(
                      Provider.of<ItemChange>(context).cartCounter.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  
                ] 
              ),
            ),
          ),
          const Positioned(
            top: 40,
            left: 12,
            child: Text(
              "NAZRI \nSHOES STORE",
              style: TextStyle(
                height: 1.5,
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}