import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news_app_api/helper/news.dart';
import 'package:news_app_api/views/Bitcoin_Page.dart';
import 'package:news_app_api/views/CurrencyInfo.dart';
import 'package:news_app_api/views/LiteCoin.dart';
import 'package:news_app_api/views/NewsPage.dart';
import 'package:news_app_api/views/Price_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Currency Application',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//0xff248F66
int _currentindex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
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
                      MaterialPageRoute(builder: (context) => PriceScreen()),
                    );
                  }),
              title: GestureDetector(
                  child: Text('Rates'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PriceScreen()),
                    );
                  })),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(450, 70),
                      bottomRight: Radius.elliptical(450, 70)),
                  color: Color(0xff248F66),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Spacer(),
                          SizedBox(
                            width: 16.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        'CryptoCurrency',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 45.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Find Crypto News, Rates and much more',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60.0,
          ),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "CryptoCurrencies",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27.0, color: Color(0xff248F66)),
                  ),
                ),
                SizedBox(width: 5.0,),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    child: Text(
                      "Read more",
                      style: TextStyle( fontSize: 15.0, color: Colors.blueGrey),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CurrencyInfo()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 380,
            height: 300.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  child: Container(
                    height: 50.00,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.grey),
                        left: BorderSide(width: 1.0, color: Colors.grey),
                        right: BorderSide(width: 1.0, color: Colors.grey),
                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                      ),

                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7.0,
                        ),
                        Container(
                          child: Image.network('https://media.gettyimages.com/photos/bitcoin-on-white-picture-id502347558?s=612x612'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Center(child: Text('Bitcoin', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color(0xff248F66)),),),
                      ],
                    )
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bitcoin()),
                    );
                  },
                ),
                SizedBox(width: 10.0,),
                GestureDetector(
                  child: Container(
                      height: 50.00,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.grey),
                          left: BorderSide(width: 1.0, color: Colors.grey),
                          right: BorderSide(width: 1.0, color: Colors.grey),
                          bottom: BorderSide(width: 1.0, color: Colors.grey),
                        ),

                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 7.0,
                          ),
                          Container(
                            child: Image.network('https://s2.coinmarketcap.com/static/img/coins/200x200/2.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Center(child: Text('LiteCoin', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color(0xff248F66)),),),
                        ],
                      )
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Litecoin()),
                    );
                  },
                ),
                SizedBox(width: 10.0,),
                Container(
                    height: 50.00,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.grey),
                        left: BorderSide(width: 1.0, color: Colors.grey),
                        right: BorderSide(width: 1.0, color: Colors.grey),
                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                      ),

                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7.0,
                        ),
                        Container(
                          child: Image.network('https://s2.coinmarketcap.com/static/img/coins/200x200/328.png'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Center(child: Text('Monero', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color(0xff248F66)),),),
                      ],
                    )
                ),
                SizedBox(width: 10.0,),
                Container(
                    height: 50.00,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.grey),
                        left: BorderSide(width: 1.0, color: Colors.grey),
                        right: BorderSide(width: 1.0, color: Colors.grey),
                        bottom: BorderSide(width: 1.0, color: Colors.grey),
                      ),

                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7.0,
                        ),
                        Container(
                          child: Image.network('https://media.dash.org/wp-content/uploads/dash-d.png'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Center(child: Text('Dash', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color(0xff248F66)),),),
                      ],
                    )
                ),

              ],
            ),



          ),


        ],
      ),


    );
  }
}

