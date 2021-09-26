import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width/2,
                  child: Image.network("https://www.tourneau.com/on/demandware.static/-/Sites-master-catalog/default/dw95f57cb5/images/large/BFJ2100010.png"),
              ),),
              Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width ,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        width: 5.00,
                        color: Color(0xffeceaea)
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.00),
                        topRight: Radius.circular(50.00),
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bucherer Fine JeWellery",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xff000000),
                            ),
                          ),
                          Text(
                            "1266-758-4",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xff4e4848),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Captivating with a rare balance of subtle elegance and opulent sensuousness, our Lacrima collection is made with modernity in mind",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff4e4848)
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$1900",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Color(0xffe510d0)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset("images/plus.png"),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
    ));
  }
}