class AppConstants {
  static const int productsPerPage = 12;
  static const List<String> sizes = ['XS', 'S', 'M', 'L', 'XL', 'XXL', '3XL'];
  static const List<Map<String, String>> genders = [
    {'label': 'Men', 'value': 'MEN'},
    {'label': 'Women', 'value': 'WOMEN'},
    {'label': 'Unisex', 'value': 'UNISEX'},
  ];
  static const List<Map<String, String>> sortOptions = [
    {'label': 'Newest', 'value': 'newest'},
    {'label': 'Price: Low to High', 'value': 'price_asc'},
    {'label': 'Price: High to Low', 'value': 'price_desc'},
    {'label': 'Discount', 'value': 'discount'},
  ];
  static const List<Map<String, String>> orderStatuses = [
    {'label': 'Pending', 'value': 'PENDING'},
    {'label': 'Confirmed', 'value': 'CONFIRMED'},
    {'label': 'Shipped', 'value': 'SHIPPED'},
    {'label': 'Delivered', 'value': 'DELIVERED'},
    {'label': 'Cancelled', 'value': 'CANCELLED'},
  ];
}
