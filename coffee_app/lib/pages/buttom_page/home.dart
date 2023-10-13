import 'package:coffee_app/pages/buttom_page/favorite.dart';
import 'package:coffee_app/pages/buttom_page/shopping.dart';
import 'package:flutter/material.dart';


  int _selectedPage = 0;

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
//   int _selectedPage = 0;
void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  List<Widget> pages = [
    // const Profile(),
    const homepage(),
    const Shopping(),
    const favorite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff230C02),
      body:IndexedStack(
        index: _selectedPage,
        children:[
       CustomScrollView(
        slivers: [
          SliverAppBar.large(
            actions: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_active),
                    color: Color(0xff230C02),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Color(0xff230C02),
                  ),
                ],
              )
            ],
            backgroundColor: Color(0xffEEDCC6),
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color(0xff230C02),
                  hintText: 'Good day, Selenay',
                  hintStyle: TextStyle(
                    color: Color(0xff230C02),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            leadingWidth: 250,
            snap: true,
            floating: true,
            pinned: true,
            expandedHeight: 200,
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "what do you like",
                    style: TextStyle(color: Color(0xff230C02), fontSize: 18),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "to drink today? ",
                    style: TextStyle(color: Color(0xff230C02), fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 76,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff230C02),
                          ),
                          child: Center(
                              child: Text(
                            'Popular',
                            style: TextStyle(
                              color: Color(0xffFFF5E9),
                              fontSize: 12,
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 85,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEEDCC6),
                          ),
                          child: Center(
                              child: Text(
                            'Black coffee',
                            style: TextStyle(
                              color: Color(0xff230C02),
                              fontSize: 12,
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 85,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEEDCC6),
                          ),
                          child: Center(
                              child: Text(
                            'Winter special',
                            style: TextStyle(
                              color: Color(0xff230C02),
                              fontSize: 12,
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 85,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEEDCC6),
                          ),
                          child: Center(
                              child: Text(
                            'Decaff',
                            style: TextStyle(
                              color: Color(0xff230C02),
                              fontSize: 12,
                            ),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 85,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEEDCC6),
                          ),
                          child: Center(
                              child: Text(
                            'Chocolate',
                            style: TextStyle(
                              color: Color(0xff230C02),
                              fontSize: 12,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Container(
                    width: 332,
                    height: 104.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFF5E9),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left:10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Black coffee",
                                  style: TextStyle(
                                      color: Color(0xff230C02), fontSize: 10,fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "ICED AMERICANO",
                                  style: TextStyle(
                                      color: Color(0xff230C02), fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset('images/coffee1.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                     Padding(
                  padding: EdgeInsets.all(25),
                  child: Container(
                    width: 332,
                    height: 104.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFF5E9),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Winter special",
                                  style: TextStyle(
                                      color: Color(0xff230C02), fontSize: 10,fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "CAPPUCINO LATTE",
                                  style: TextStyle(
                                      color: Color(0xff230C02), fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset('images/coffee2.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

       Padding(
                  padding: EdgeInsets.all(25),
                  child: Container(
                    width: 332,
                    height: 104.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFF5E9),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "DECAFF",
                                  style: TextStyle(
                                      color: Color(0xff230C02), fontSize: 10,fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "SILKY CAFEAU LAIT ",
                                  style: TextStyle(
                                      color: Color(0xff230C02), fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset('images/coffee3.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                  Padding(
                  padding: EdgeInsets.all(25),
                  child: Container(
                    width: 332,
                    height: 104.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFF5E9),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "CHOCOLATE",
                                  style: TextStyle(
                                      color: Color(0xff230C02), fontSize: 10,fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Iced Chocolate ",
                                  style: TextStyle(
                                      color: Color(0xff230C02), fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset('images/coffee4.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedPage,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xffEEDCC6),
          selectedItemColor: Color(0xff230C02),
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home_outlined,
                color: Color(0xff230C02),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Shopping',
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xff230C02),
              ),
            ),
            BottomNavigationBarItem(
              label: "favorite",
              icon: Icon(
                Icons.favorite_border,
                color: Color(0xff230C02),
              ),
            ),
            BottomNavigationBarItem(
              label: 'person',
              icon: Icon(
                Icons.person_outline_outlined,
                color: Color(0xff230C02),
              ),
            ),
          ]),
    );
  }
}
