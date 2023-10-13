import 'package:coffee_app/pages/loginpage.dart';
import 'package:flutter/material.dart';

class welcomBackpage extends StatefulWidget {
  const welcomBackpage({super.key});

  @override
  State<welcomBackpage> createState() => _welcomBackpageState();
}

class _welcomBackpageState extends State<welcomBackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffEEDCC6),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/coffee.png'), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 190, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      color: Color(0xff230C02),
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Back!',
                  style: TextStyle(
                      color: Color(0xff230C02),
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 180,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const liginpage()),
                  );
                },
                child: Container(
                  width: 333,
                  height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff230C02),
                  ),
                  child: Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Color(0xffEEDDC9), fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const welcomBackpage()),
                  );
                },
                child: Container(
                  width: 333,
                  height: 47,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff230C02)),
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffEEDCC6),
                  ),
                  child: Center(
                    child: Text(
                      'create an account',
                      style: TextStyle(color: Color(0xff230C02), fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
SizedBox(height: 8,),
Center(
  child: TextButton(onPressed: () {
    
  },
  child: Text('Forgot your password?',style: TextStyle(fontSize: 14,color: Color(0xff230C02)),), ),
)
          ],
        ),
      ),
    );
  }
}
