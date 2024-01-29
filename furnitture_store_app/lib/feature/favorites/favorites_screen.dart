import 'package:flutter/material.dart';
import 'package:furnitture_store_app/core/utils/app_colors.dart';
import 'package:furnitture_store_app/feature/home/models/furniture_model.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.search),
        title: const Text(
          'Favorites',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: furnitures.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  indent: 16,
                  endIndent: 16,
                  color: AppColors.storkDivider,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return CustomListTile(
                  height: 120,
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.cancel_outlined),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.black.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                  title: Text(furnitures[index].brandname),
                  subTitle: Text('\$ ${furnitures[index].price} '),
                  leading: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(furnitures[index].imageUrl),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50,
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
                'Add all to my cart',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom list tile definition
class CustomListTile extends StatelessWidget {
  final Widget? leading; // Optional leading widget
  final Text? title; // Required title text
  final Text? subTitle; // Optional subtitle text
  final Function? onTap; // Optional tap event handler
  final Function? onLongPress; // Optional long press event handler
  final Function? onDoubleTap; // Optional double tap event handler
  final Widget? trailing; // Optional trailing widget
  final Color? tileColor; // Optional tile background color
  final double? height; // Required height for the custom list tile

  // Constructor for the custom list tile
  const CustomListTile({
    super.key,
    this.leading,
    this.title,
    this.subTitle,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    this.trailing,
    this.tileColor,
    required this.height, // Make height required for clarity
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      // Material design container for the list tile
      color: tileColor, // Set background color if provided
      child: InkWell(
        // Tappable area with event handlers
        onTap: () => onTap, // Tap event handler
        onDoubleTap: () => onDoubleTap, // Double tap event handler
        onLongPress: () => onLongPress, // Long press event handler
        child: SizedBox(
          // Constrain the size of the list tile
          height: height, // Set custom height from constructor
          child: Row(
            // Row layout for list item content
            children: [
              Padding(
                // Padding for the leading widget
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: leading, // Display leading widget
              ),
              Expanded(
                // Expanded section for title and subtitle
                child: Column(
                  // Column layout for title and subtitle
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text left
                  children: [
                    title ?? const SizedBox(), // Display title or empty space
                    const SizedBox(
                        height: 10), // Spacing between title and subtitle
                    subTitle ??
                        const SizedBox(), // Display subtitle or empty space
                  ],
                ),
              ),
              Padding(
                // Padding for the trailing widget
                padding: const EdgeInsets.all(12.0),
                child: trailing, // Display trailing widget
              )
            ],
          ),
        ),
      ),
    );
  }
}

// // import 'package:flutter/material.dart';
// // import 'package:furnitture_store_app/core/utils/app_colors.dart';
// // import 'package:furnitture_store_app/feature/home/models/furniture_model.dart';
// // import 'package:gap/gap.dart';

// // class FavoritesScreen extends StatelessWidget {
// //   const FavoritesScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         centerTitle: true,
// //         leading: const Icon(Icons.search),
// //         title: const Text(
// //           'Favorites',
// //           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
// //         ),
// //         actions: const [
// //           Icon(Icons.shopping_cart_outlined),
// //           SizedBox(
// //             width: 10,
// //           )
// //         ],
// //       ),
// //       body: Stack(
// //         children: [
// //           Expanded(
// //             child: ListView.separated(
// //               itemCount: furnitures.length,
// //               separatorBuilder: (BuildContext context, int index) {
// //                 return const Divider(
// //                   indent: 16,
// //                   endIndent: 16,
// //                   color: AppColors.storkDivider,
// //                 );
// //               },
// //               itemBuilder: (BuildContext context, int index) {
// //                 return ListTile(
// //                   trailing: Column(
// //                     mainAxisSize: MainAxisSize.max,
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       const Icon(Icons.cancel_outlined),
// //                       Padding(padding: EdgeInsets.symmetric(vertical: 10)),
// //                       Container(
// //                         padding: const EdgeInsets.all(2),
// //                         decoration: BoxDecoration(
// //                           color: Colors.black.withOpacity(0.2),
// //                           borderRadius: BorderRadius.circular(10.0),
// //                         ),
// //                         child: Icon(
// //                           Icons.shopping_bag,
// //                           color: Colors.black.withOpacity(0.9),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   title: Text(furnitures[index].brandname),
// //                   subtitle: Text('\$ ${furnitures[index].price} '),
// //                   leading: Container(
// //                     width: 100,
// //                     height: 100,
// //                     decoration: BoxDecoration(
// //                       image: DecorationImage(
// //                           fit: BoxFit.cover,
// //                           image: AssetImage(
// //                             furnitures[index].imageUrl,
// //                           )),
// //                       borderRadius: const BorderRadius.all(
// //                         Radius.circular(14),
// //                       ),
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }


 