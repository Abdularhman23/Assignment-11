void viewMenu(Map<String, double> menu) {
  print('\nMenu:');
  menu.forEach((item, price) {
    print('- $item: \$${price.toStringAsFixed(2)}');
  });
}
