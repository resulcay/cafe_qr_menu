class Product {
  final String name;
  final String imagePath;

  Product(
    this.name,
    this.imagePath,
  );

  static final List<Product> coldDrinks = [
    Product('cola', 'ice_small.png'),
    Product('cola', 'ice_small.png'),
    Product('cola', 'ice_small.png'),
    Product('cola', 'ice_small.png'),
  ];
  static final List<Product> hotDrinks = [
    Product('coffee', 'coffee_small.png'),
    Product('coffee', 'coffee_small.png'),
    Product('coffee', 'coffee_small.png'),
    Product('coffee', 'coffee_small.png'),
  ];
  static final List<Product> entrees = [
    Product('fries', 'fries_small.png'),
    Product('fries', 'fries_small.png'),
    Product('fries', 'fries_small.png'),
    Product('fries', 'fries_small.png'),
  ];
  static final List<Product> mainCourses = [
    Product('grill', 'grill_small.png'),
    Product('grill', 'grill_small.png'),
    Product('grill', 'grill_small.png'),
    Product('grill', 'grill_small.png'),
  ];
}
