import 'package:flutter/material.dart';

class FurnitureWidget extends StatelessWidget {
  final String imageUrl;
  final String brandname;
  final String price;
  const FurnitureWidget(
      {super.key,
      required this.imageUrl,
      required this.brandname,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                // padding: const EdgeInsets.all(8),
                // margin: const EdgeInsets.only(bottom: 10),
                //width: 350,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              brandname,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1),
            child: Text(
              "\$ $price",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
