import 'dart:io';
import 'package:resturant/viewOrderSummary.dart';
import 'package:resturant/placeOrder.dart';
import 'package:resturant/viewMenu.dart';

void main() {
  // Map: menu items and their prices
  Map<String, double> menu = {
    'Foul (Fava Beans)': 6.0,
    'Tamiz Bread': 1.0,
    'Eggs with Tomatoes (Shakshuka)': 8.0,
    'Cheese Sandwich': 5.0,
    'Falafel': 4.0,
    'Labneh': 3.5,
    'Hummus': 4.5,
    'Arabic Tea': 2.0,
    'Laban': 3.0,
    'Coffee': 6.0,
    'Dates': 2.0,
  };

  // List: stores ordered items
  Map<String, int> order = {};

  bool isRunning = true;

  while (isRunning) {
    print('\n Welcome to the Restaurant!');
    print('1. View Menu');
    print('2. Place Order');
    print('3. View Order Summary');
    print('4. Exit');
    stdout.write('Select Your Option Please : ');
    int? input = int.parse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        viewMenu(menu);
        break;
      case 2:
        placeOrder(menu, order);
        break;
      case 3:
        viewOrderSummary(menu, order);
        break;
      case 4:
        print('\nThank you for visiting. Goodbye!');
        isRunning = false;
        break;
      default:
        print(' Invalid input. Please slect your option from 1 to 4.');
    }
  }
}
