import 'package:flutter/material.dart';
import 'package:second_app/dish_cart.dart';

class Dish {
  final String name;
  final String rate;

  final String imageUrl;
  final double rating;
  final String discription;

  Dish({
    required this.name,
    required this.rate,
    required this.imageUrl,
    required this.rating,
    required this.discription,
  });
}

final List<Dish> dish = [
  Dish(
    name: '5 Cheese Stuffed Garlic Bread',
    rate: '₹100',
    imageUrl: 'asset/images/garlic.jpeg',
    rating: 3.9,
    discription: 'Stuffed With Exotic Combination.....',
  ),
  Dish(
    name: 'Margherita Pizza',
    rate: '₹139',
    imageUrl: 'asset/images/gpizza.png',
    rating: 5.0,
    discription: 'Mozzarella Cheese & Signature.....',
  ),
  Dish(
    name: 'Golden Corn Pizza',
    rate: '₹199',
    imageUrl: 'asset/images/mpizza.png',
    rating: 4.0,
    discription: 'Sweet Corn With Perry...',
  ),
];

class MyDish extends StatelessWidget {
  const MyDish({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [
            Padding(
              padding: const EdgeInsets.all(
                  10), 
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 65,
                      padding: const EdgeInsets.all(
                          8.0), 
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Dishes',
                          suffixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor:
                              Colors.grey[300], 
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    
                    margin: const EdgeInsets.only(
                        left: 5), 
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.account_box_rounded),
                      color: Colors.black, 
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text(
                    'Pure Veg',
                    style: TextStyle(fontSize: 13, color: Colors.green),
                  ),
                  icon: const Icon(
                    Icons.donut_small,
                    color: Colors.green,
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                        color: Colors.black, width: 0.2), 
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(25), 
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text(
                    'Ratings 4.0+',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                        color: Colors.black, width: 0.2), 
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20), 
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                        color: Colors.black, width: 0.2), 
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20), 
                    ),
                  ),
                  child: const Text(
                    'Bestseller',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 10, left: 20, bottom: 5),
              decoration: const BoxDecoration(
                color: Colors.white, 
                border: Border(
                  bottom: BorderSide(
                      color: Colors.black,
                      width: 0.2), 
                ),
              ),
              child: const Text('Recommended (20)'),
            ),
            Row(
              children: [
                Container(
                  width: 360,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: const Text(
                    'Recommended (20)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_upward_rounded)),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dish.length,
                itemBuilder: (BuildContext context, int index) {
                  final restaurant = dish[index];

                  return Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyCart()),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(restaurant.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Text(
                                  restaurant.rate,
                                  style: const TextStyle(fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                    const SizedBox(height: 25),
                                    Text(
                                      '${restaurant.rating}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  height: 30,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.pink[50],
                                        elevation: 0,
                                        side: BorderSide.none),
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.save_alt,
                                          size: 20,
                                          color: Colors.pink,
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          'Save to eatlist',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(restaurant.discription),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyCart()),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              restaurant.imageUrl,
                              width: 180,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
