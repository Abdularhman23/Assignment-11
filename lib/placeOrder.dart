import 'dart:io';

void placeOrder(Map<String, double> menu, Map<String, int> order) {
  while (true) {
    stdout.write('\nEnter item name to order (or type "done" to finish): ');
    String? item = stdin.readLineSync();

    if (item == null || item.trim().isEmpty) {
      print('Please enter a valid item.');
      continue;
    }

    if (item.toLowerCase() == 'done') break;

    if (menu.containsKey(item)) {
      stdout.write('Enter quantity for "$item": ');
      String? qtyInput = stdin.readLineSync();
      int? qty = int.tryParse(qtyInput ?? '');

      if (qty == null || qty <= 0) {
        print('Invalid quantity.');
        continue;
      }

      order[item] = (order[item] ?? 0) + qty;
      print('Added $qty x "$item" to your order.');
    } else {
      print('"$item" is not on the menu.');
    }
  }
}
