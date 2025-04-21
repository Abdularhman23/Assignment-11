void viewOrderSummary(Map<String, double> menu, Map<String, int> order) {
  if (order.isEmpty) {
    print('\nYour order is empty.');
    return;
  }

  print('\n Order Summary:');
  double total = 0.0;

  order.forEach((item, qty) {
    double price = menu[item]!;
    double itemTotal = price * qty;
    print('- $qty x $item = \$${itemTotal.toStringAsFixed(2)}');
    total += itemTotal;
  });

  print('\nTotal Amount: \$${total.toStringAsFixed(2)}');
}
