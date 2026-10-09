import 'dart:io';


void main() {
  bool ordering = true;

  while (ordering) {
    print('\n--- Pizza Ordering System ---');
    print('Enter pizza size (small, medium, large):');
    String size = stdin.readLineSync()!.toLowerCase();

    print('Enter quantity:');
    int quantity = int.parse(stdin.readLineSync()!);

    double totalCost = 0;

    switch (size) {
      case 'small':
        totalCost = quantity * 5;
        break;
      case 'medium':
        totalCost = quantity * 7;
        break;
      case 'large':
        totalCost = quantity * 10;
        break;
      default:
        print('Invalid pizza size. Please try again.');
        continue;
    }

    print('Total payment: RM${totalCost.toStringAsFixed(2)}');

    print('Do you want to order again? (yes/no)');
    String answer = stdin.readLineSync()!.toLowerCase();

    if (answer != 'yes') {
      ordering = false;
      print('Thank you for your order!');
    }
  }
}
