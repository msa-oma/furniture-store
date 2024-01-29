import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int itemsCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/minimal-stand.jpg',
                      )),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
              ),
              Positioned(
                  left: 20,
                  top: 50,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          width: 40,
                          height: 40,
                          child: const Icon(Icons.arrow_back_ios))))
            ],
          ),

          // display item name
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Minimal Stand',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // display item price
                const Text(
                  '\$ 50',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const Spacer(),

                // add and sub and count widget
                Container(
                  //add widget
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        itemsCount++;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
                // count widget
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    itemsCount.toString(),
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),

                //sub widget
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (itemsCount != 1) {
                          itemsCount--;
                        }
                      });
                    },
                    child: const Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '4.5',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '(50 reviews)',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Text(
              '''Minimal Stan is made of by natural wood. The design that is very simple and minimal. this is truly one of the best furnitures in any family for now. with 3 different colors,you can easliy select the best match for your home''',
              style: TextStyle(fontSize: 15.5),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  width: 54,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return const FavoritesScreen();
                      //     },
                      //   ),
                      // );
                      showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: const Text("Added to Favorites"),
                                content: const Text("mock added "),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ));
                          });
                    },
                    child: const Icon(
                      Icons.bookmark_outline,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
