import 'package:coffee_app/pages/buttom_page/home.dart';
import 'package:coffee_app/pages/welcomBackpage.dart';
import 'package:flutter/material.dart';

final _check = GlobalKey<FormState>();

class liginpage extends StatefulWidget {
  const liginpage({super.key});

  @override
  State<liginpage> createState() => _liginpageState();
}

class _liginpageState extends State<liginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            // SizedBox(
            //   height: 180,
            // ),
            Form(
              key: _check,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff230C02),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text(
                          'password',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff230C02),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your password';
                        }
                        if (value.length < 9) {
                          return 'please enter more than 8 charactars';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  if (_check.currentState!.validate())
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const homepage()),
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
            SizedBox(
              height: 8,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(fontSize: 14, color: Color(0xff230C02)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
