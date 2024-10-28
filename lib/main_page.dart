import 'package:flutter/material.dart';
import 'package:second_app/dishes_Page.dart';

class Restaurant {
  final String name;
  final String cuisine;
  final String location;
  final String imageUrl;
  final double rating;
  final String deliveryTime;
  final String offers;

  Restaurant({
    required this.name,
    required this.cuisine,
    required this.location,
    required this.imageUrl,
    required this.rating,
    required this.deliveryTime,
    required this.offers,
  });
}

final List<Restaurant> restaurants = [
  Restaurant(
    name: 'La Milano Pizzeria',
    cuisine: 'Pizza, Italian',
    location: 'Mehsana Locality 1.3 Km',
    imageUrl: 'asset/images/pizza.png',
    rating: 4.5,
    deliveryTime: '20-25 mins',
    offers: '10% off on orders above ₹500',
  ),
  Restaurant(
    name: 'KFC',
    cuisine: 'Fried Chicken, Fast Food',
    location: 'Ahmedabad 2.0 Km',
    imageUrl: 'asset/images/chicken.png',
    rating: 4.2,
    deliveryTime: '30-35 mins',
    offers: 'Free delivery on orders above ₹300',
  ),
  Restaurant(
    name: 'Burger King',
    cuisine: 'Burgers, Fast Food',
    location: 'Mehsana Locality 1.8 Km',
    imageUrl: 'asset/images/kitchen.png',
    rating: 4.0,
    deliveryTime: '25-30 mins',
    offers: '20% off for new users',
  ),
];

class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Icon(
              Icons.location_on_rounded,
              color: Color.fromARGB(255, 255, 69, 27),
            ),
          ),
          leadingWidth: 20,
          title: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Chhathiyarda ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                'Chhathiyarda, Gujarat 345432, India',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: const Icon(Icons.search),
                    fillColor: Colors.grey[300],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black, width: 0.7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  label: const Text(
                    'Filter',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  icon: const Icon(
                    Icons.link_rounded,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black, width: 0.7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  label: const Text(
                    'Sort by',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  icon: const Icon(
                    Icons.arrow_downward,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black, width: 0.7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Fast Delivery',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: restaurants.length,
                itemBuilder: (BuildContext context, int index) {
                  final restaurant = restaurants[index];

                  return Container(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyDish()),
                        );
                      },
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              restaurant.imageUrl,
                              width: 150,
                              height: 160,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(restaurant.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Text(
                                  restaurant.cuisine,
                                  style: const TextStyle(fontSize: 15),
                                ),
                                Text(restaurant.location,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      '${restaurant.rating}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Text(restaurant.deliveryTime),
                                Text(restaurant.offers,
                                    style:
                                        const TextStyle(color: Colors.green)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2))]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.fastfood_rounded),
                    color: Colors.grey,
                    iconSize: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_bag_rounded),
                    color: Colors.grey,
                    iconSize: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MainPage());
}
