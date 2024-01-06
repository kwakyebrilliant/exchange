import 'package:flutter/material.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({super.key});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0F14),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            top: 60.0,
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Swap text here
                const Text(
                  'Exchange',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                //Big Container
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF262B34),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  //Bitcoin container here
                                  Container(
                                    height: 35.0,
                                    width: 35.0,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const Icon(
                                      Icons.currency_bitcoin_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),

                                  //Bitcoin text here
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Bitcoin',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  //arrow down here
                                  Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: Colors.grey[500],
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),

                            //BTC text here
                            Text(
                              'BTC',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 10.0,
                        ),

                        //conversion text here
                        Text(
                          '1 Bitcoin (BTC) = 45,679 (USD)',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 10.0,
                          ),
                        ),

                        const SizedBox(
                          height: 20.0,
                        ),

                        //amount textfield
                        Center(
                          child: TextField(
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter Amount',
                              hintStyle: TextStyle(
                                fontSize: 10,
                                color: Colors.grey[500],
                              ),
                              border: InputBorder.none,
                              suffixIcon: const Padding(
                                padding: EdgeInsets.only(right: 70.0),
                                child: Icon(
                                  Icons.currency_exchange_rounded,
                                  size: 30.0,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20.0,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  //USD container here
                                  Container(
                                    height: 35.0,
                                    width: 35.0,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '\$',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),

                                  //USD text here
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'USD',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  //arrow down here
                                  Icon(
                                    Icons.arrow_drop_down_rounded,
                                    color: Colors.grey[500],
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),

                            //BTC text here
                            Text(
                              'USD',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 10.0,
                        ),

                        //conversion text here
                        Text(
                          '1 United States Dollar (USD) = 0.000037 (BTC)',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 10.0,
                          ),
                        ),

                        const SizedBox(
                          height: 20.0,
                        ),

                        //conversion amount here
                        const Text(
                          '8,876,379.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //conversion button
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(
                            child: Text(
                              'Convert Amount',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
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
