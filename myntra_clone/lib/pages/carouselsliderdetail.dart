import 'package:flutter/material.dart';


class ProductListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return           Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/image/women', width: 140,),
          ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    // CustomText(text:"White Shoes", size: 18,),
                    Text("White Shoes")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    // CustomText(text:"Nike", color: Colors.grey,),
                    Text('Nike')
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CustomText(text:"\$18.0", size: 20, weight: FontWeight.bold,),
                    Text("\$ 18.0"),
                    SizedBox(width: 100,),
                    IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){})
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    )
    ;
  }
}

