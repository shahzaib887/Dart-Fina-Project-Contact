import 'dart:io';

void main() {
  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Laptop",
      "description": "High performance laptop",
      "price": 75000,
      "stock": 10,
    },
    {
      "id": 2,
      "name": "Smartphone",
      "description": "Latest Android smartphone",
      "price": 25000,
      "stock": 30,
    },
    {
      "id": 3,
      "name": "Headphones",
      "description": "Noise cancelling headphones",
      "price": 3500,
      "stock": 50,
    },
    {
      "id": 4,
      "name": "Keyboard",
      "description": "Mechanical keyboard",
      "price": 1500,
      "stock": 20,
    },
    {
      "id": 5,
      "name": "Mouse",
      "description": "Wireless Bluetooth mouse",
      "price": 800,
      "stock": 40,
    },
  ];

  stdout.write('Enter User Name: ');
  String userName = stdin.readLineSync()!;

  stdout.write('Enter User Email: ');
  String userEmail = stdin.readLineSync()!;

  stdout.write('Enter User Phone: ');
  int userNumber = int.parse(stdin.readLineSync()!);

  stdout.write('Form Submit Yes/No: ');
  String formSubmit = stdin.readLineSync()!;

  if (formSubmit.toLowerCase() == 'no') {
    print('\nForm Not Submitted by $userName');
    return;
  }

  print('\nThanks For Submitting Form');
  print('Name: $userName');
  print('Email: $userEmail');
  print('Phone: $userNumber');

  stdout.write(
    '\nEnter Product Name: ${products[0]['name']}, ${products[1]['name']}, ${products[2]['name']}, ${products[3]['name']}, ${products[4]['name']}: ',
  );

  String productName = stdin.readLineSync()!;

  var sameProducts = products
      .where(
        (product) =>
            product['name'].toString().toLowerCase() ==
            productName.toLowerCase(),
      )
      .toList();

  if (sameProducts.isNotEmpty) {
    var productResult = sameProducts[0];

    print('\nProduct Found:');
    print('Name: ${productResult['name']}');
    print('Description: ${productResult['description']}');
    print('Price: ${productResult['price']}');
    print('Stock: ${productResult['stock']}');
  } else {
    print('\nProduct Not Found');
    return;
  }

  stdout.write('\nDo You Want To Buy Now (yes/no): ');
  String buyNow = stdin.readLineSync()!;

  if (buyNow.toLowerCase() == 'yes') {
    print('\n Purchase Successful!');
    print('Thanks for buying the product.');
  } else {
    print('\n Not Buy Now');
  }
}
