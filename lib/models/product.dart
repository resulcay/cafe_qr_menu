class Product {
  final String name;
  final String imagePath;

  Product(
    this.name,
    this.imagePath,
  );

  static final List<Product> coldDrinks = [
    Product('Coca Cola', 'cola.jpeg'),
    Product('Coca Cola Zero', 'cola_zero.jpeg'),
    Product('Cappy Cherry Glass', 'cappy_cherry_glass.jpeg'),
    Product('Cappy Mixed Glass', 'cappy_mixed_glass.jpeg'),
    Product('Cappy Peach Glass', 'cappy_peach_glass.jpeg'),
    Product('Soda Pop', 'soda_pop.png')
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
