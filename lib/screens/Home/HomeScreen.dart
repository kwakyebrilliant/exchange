import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0F14),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D0F14),
        elevation: 0,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[500],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 2.0),
                    child: Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 35.0,
                width: 35.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/boy.jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            top: 30.0,
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // card here
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.teal,
                        Color.fromARGB(255, 62, 174, 163),
                      ], // Adjust colors as needed
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.circle_rounded,
                            size: 30.0,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.circle_rounded,
                            size: 30.0,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        '**** **** **** 1234',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        '\$10,742',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cardholder Name',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'John Doe', // Replace with actual cardholder name
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expires',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '12/24', // Replace with actual cardholder name
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // assets here
                const Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Assets',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),

                //container for horizontal scroll items
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: 130.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        //BTC container here
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            width: 170.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF262B34),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    children: [
                                      //BTC container here
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Container(
                                          height: 35.0,
                                          width: 35.0,
                                          decoration: BoxDecoration(
                                            color: Colors.teal,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: const Icon(
                                            Icons.currency_bitcoin_rounded,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),

                                      //BTC text here
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'BTC/USD',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //statistics here
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            //martket cap text here
                                            Text(
                                              'Market Cap',
                                              style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 10,
                                              ),
                                            ),
                                            const SizedBox(height: 4.0),

                                            //amount here
                                            const Text(
                                              '\$598,372',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //changes here
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            right: 10.0, top: 12.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.arrow_drop_up,
                                              color: Colors.teal,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.0),
                                              child: Text(
                                                '+72%',
                                                style: TextStyle(
                                                  color: Colors.teal,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Pounds Container here
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            width: 170.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF262B34),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    children: [
                                      //BTC container here
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Container(
                                          height: 35.0,
                                          width: 35.0,
                                          decoration: BoxDecoration(
                                            color: Colors.teal,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: const Icon(
                                            Icons.currency_pound_rounded,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),

                                      //Pounds text here
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '£/USD',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //statistics here
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            //martket cap text here
                                            Text(
                                              'Market Cap',
                                              style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 10,
                                              ),
                                            ),
                                            const SizedBox(height: 4.0),

                                            //amount here
                                            const Text(
                                              '\$85,315',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //changes here
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            right: 10.0, top: 12.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.red,
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.0),
                                              child: Text(
                                                '-13%',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // news here
                const Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 20.0),
                  child: Text(
                    'News',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),

                // news items
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blueGrey.withOpacity(0.2),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'From Bloomberg',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Lorem Ipsum is simply dummy...',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.close_rounded,
                                  size: 30.0,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
