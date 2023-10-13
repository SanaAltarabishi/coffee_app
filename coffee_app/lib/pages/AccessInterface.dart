import 'package:coffee_app/pages/welcomBackpage.dart';
import 'package:flutter/material.dart';

class AccessInterface extends StatefulWidget {
  const AccessInterface({super.key});

  @override
  State<AccessInterface> createState() => _AccessInterfaceState();
}

class _AccessInterfaceState extends State<AccessInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        //backgroundColor: Color(0xffEEDCC6),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container( 
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/coffee.png'), fit: BoxFit.fill)),
          child: Padding(
            padding: EdgeInsets.only(top: 180),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  'COFFEE SHOP',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff230C02)),
                )),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'Enjoy the drink coffee .',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff230C02)),
                )),
                SizedBox(
                  height: 130,
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
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff230C02),
                      ),
                      child: Center(
                        child: Text(
                          'Shop now',
                          style:
                              TextStyle(color: Color(0xffEEDDC9), fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
