import 'dart:ui';
import 'package:flutter/material.dart';
import 'NewsPage.dart';
import 'package:news_app_api/main.dart';

class Bitcoin extends StatefulWidget {
  @override
  _BitcoinState createState() => _BitcoinState();
}

class _BitcoinState extends State<Bitcoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff248F66),
        title: Text('Bitcoin'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff248F66),
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(
                Icons.home,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
            title: GestureDetector(
              child: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.next_week),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsPage()),
                );
              },
            ),
            title: GestureDetector(
              child: Text('News'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsPage()),
                );
              },
            ),
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  child: Icon(Icons.monetization_on),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsPage()),
                    );
                  }),
              title: GestureDetector(
                  child: Text('Rates'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsPage()),
                    );
                  })),
        ],
      ),
      body:
      ListView(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(20.0),
              height: 200.0,
              width: 200.0,
              child: Image.network('https://media.gettyimages.com/photos/bitcoin-on-white-picture-id502347558?s=612x612'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            child: Text('Bitcoin is a cryptocurrency invented in 2008 by an unknown person or group of people using the name Satoshi Nakamoto and started in 2009 when its implementation was released as open-source software. It is a decentralized digital currency without a central bank or single administrator that can be sent from user to user on the peer-to-peer bitcoin network without the need for intermediaries. Transactions are verified by network nodes through cryptography and recorded in a public distributed ledger called a blockchain. Bitcoins are created as a reward for a process known as mining. They can be exchanged for other currencies, products, and services.[17] Research produced by University of Cambridge estimates that in 2017, there were 2.9 to 5.8 million unique users using a cryptocurrency wallet, most of them using bitcoin. Bitcoin has been praised and criticized. Critics noted its use in illegal transactions, the large amount of electricity used by miners, price volatility, and thefts from exchanges. Some economists, including several Nobel laureates, have characterized it as a speculative bubble. Bitcoin has also been used as an investment, although several regulatory agencies have issued investor alerts about bitcoin. Using blockchain technology, Bitcoin allows users to make transparent peer-to-peer transactions. All users can view these transactions; however, they are secured through the algorithm within the blockchain. While everyone can see the transaction, only the owner of that Bitcoin can decrypt it with a “private key” that is given to each owner. Unlike a bank, there is no central authority figure in the Bitcoin. Bitcoin users control the sending and receiving of money, which allows for anonymous transactions to take place throughout the world',
              style: TextStyle(
                fontSize: 20.0,
              ),),
          ),
        ],
      ),
    );
  }
}