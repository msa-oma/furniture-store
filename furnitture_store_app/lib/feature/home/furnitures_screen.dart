import 'package:flutter/material.dart';
import 'package:furnitture_store_app/feature/home/details_screen.dart';
import 'package:furnitture_store_app/feature/home/models/furniture_model.dart';
import 'package:furnitture_store_app/feature/home/models/furniture_types_model.dart';
import 'package:furnitture_store_app/feature/home/widgets/furniture_widget.dart';
import 'package:furnitture_store_app/feature/home/widgets/type_widget.dart';

class Furniturescreen extends StatefulWidget {
  const Furniturescreen({super.key});

  @override
  State<Furniturescreen> createState() => _FurniturescreenState();
}

class _FurniturescreenState extends State<Furniturescreen> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: const Icon(Icons.search),
        title: const Column(
          children: [
            Text(
              'Make home',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'BEAUTIFUL',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: const [
          Icon(Icons.shopping_cart_outlined),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(children: [
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: furnitTypes.length,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 22,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedItem = index;
                      });
                    },
                    child: TypeWidget(
                      isSelected: selectedItem == index ? true : false,
                      iconData: furnitTypes[index].iconData,
                      name: furnitTypes[index].name,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.19 / 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
              itemCount: furnitures.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const DetailsScreen();
                        },
                      ),
                    );
                  },
                  child: FurnitureWidget(
                      imageUrl: furnitures[index].imageUrl,
                      brandname: furnitures[index].brandname,
                      price: furnitures[index].price),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
