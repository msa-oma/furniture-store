class Furniture {
  final String imageUrl;
  final String brandname;
  final String price;

  Furniture(
      {required this.imageUrl, required this.brandname, required this.price});
}

List<Furniture> furnitures = [
  Furniture(
      imageUrl: 'assets/images/black-simple-lamp.png',
      brandname: 'Black Simple lamp',
      price: '12.00'),
  Furniture(
      imageUrl: 'assets/images/minimal-stand.png',
      brandname: 'Minimal stand',
      price: '25.00'),
  Furniture(
      imageUrl: 'assets/images/coffee-chair.jpg',
      brandname: 'Coffee Chair',
      price: '20.00'),
  Furniture(
      imageUrl: 'assets/images/simple-desk.png',
      brandname: 'Simple Disk',
      price: '50.00'),
  Furniture(
      imageUrl: 'assets/images/coffee-table.png',
      brandname: 'Coffee Table',
      price: '50.00'),
  Furniture(
      imageUrl: 'assets/images/modern-chair.jpg',
      brandname: 'Modern Chair',
      price: '75.00')
];
