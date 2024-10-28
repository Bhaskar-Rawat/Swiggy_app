import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: const Text(
                    "La Milano Pizza",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                )
              ],
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Icon(
                        Icons.percent,
                        size: 30,
                        color: Colors.green,
                      )),
                  Container(
                    child: const Text(
                      '₹44 Saved!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20),
                    ),
                  ),
                  const Text(
                    ' with FREE delivery',
                    style: TextStyle(color: Colors.green, fontSize: 17),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: const Icon(
                          Icons.fiber_manual_record,
                          color: Colors.green,
                          size: 15,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        width: 150,
                        child: const Text(
                          '5 Stuffed Garlic Bread',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.2,
                            )),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.green,
                                  size: 20,
                                )),
                            const Text(
                              '1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                  fontSize: 18),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.green,
                                  size: 20,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 25),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '₹199',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              '₹180',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        child: const Icon(
                          Icons.fiber_manual_record,
                          color: Colors.green,
                          size: 15,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Margherita Pizza',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                          ),
                          Container(
                              width: 150,
                              child: const Text(
                                '  Giant Slice(20....',
                                style: TextStyle(color: Colors.grey),
                              )),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.2,
                            )),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.green,
                                  size: 20,
                                )),
                            const Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.green,
                                  size: 20,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30, top: 25),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '₹139',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              '₹120',
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle
                                  .solid, 
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                color: Colors.white,
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  'Add more items',
                                  style: TextStyle(fontSize: 18),
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add_rounded)),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle
                                  .solid, 
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 20),
                                color: Colors.white,
                                child: const Text(
                                  'Add more items',
                                  style: TextStyle(fontSize: 18),
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add_rounded)),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ), 
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text(
                        'Complete Your Meal',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'asset/images/chicken.png',
                                width: 80, 
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.fiber_manual_record,
                                  color: Colors.green,
                                  size: 15,
                                ), 
                                Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    width: 50,
                                    child: const Text('Cheese Dip'))
                              ],
                            ), 
                            Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: const Text(
                                  '₹35',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ))
                          ],
                        ), 
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'asset/images/gpizza.png',
                                width: 80, 
                                height: 80, 
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.fiber_manual_record,
                                  color: Colors.green,
                                  size: 15,
                                ), 
                                Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    width: 50,
                                    child: const Text('Cheese Dip'))
                              ],
                            ), 
                            Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: const Text(
                                  '₹35',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'asset/images/kitchen.png',
                                width: 80, 
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.fiber_manual_record,
                                  color: Colors.green,
                                  size: 15,
                                ),
                                Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    width: 50,
                                    child: const Text('Cheese Dip'))
                              ],
                            ), 
                            Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: const Text(
                                  '₹35',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ))
                          ],
                        ), 
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'asset/images/pizza.png',
                                width: 80, 
                                height: 80, 
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.fiber_manual_record,
                                  color: Colors.green,
                                  size: 15,
                                ), 
                                Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    width: 50,
                                    child: const Text('Cheese Dip'))
                              ],
                            ), 
                            Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: const Text(
                                  '₹35',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ))
                          ],
                        ), 
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 19),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.1),
                        child: Icon(
                          Icons.send,
                          color: Color.fromARGB(255, 255, 69, 27),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 25),
                        width: 370,
                        child: const Text(
                          'Where would you like us to deliver this order ?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )
                    ],
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
