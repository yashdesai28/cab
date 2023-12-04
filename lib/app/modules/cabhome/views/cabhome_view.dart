import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cabhome_controller.dart';

class CabhomeView extends StatefulWidget {
  const CabhomeView({super.key});

  @override
  State<CabhomeView> createState() => _CabhomeViewState();
}

class _CabhomeViewState extends State<CabhomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height - 100,
        width: double.infinity,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 610,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                        height: 35,
                        width: 55,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/currnt.png'),
                          //fit: BoxFit.cover
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 70,
                        height: 45,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Add your pick-up location',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 35,
                        width: 55,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/location.png'),
                          //fit: BoxFit.cover
                        )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 70,
                        height: 45,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Where to ?',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 110,
              // color: Colors.red,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width - 310,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(105, 176, 101, 0.7),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/bike.png'),
                                //fit: BoxFit.cover
                              )),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("price")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width - 310,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 81, 50, 0.37),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/riksha.png'),
                                //fit: BoxFit.cover
                              )),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("price")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width - 310,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(105, 176, 101, 0.7),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/car.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("price")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width - 310,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 81, 50, 0.37),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/suv.png'),
                                //fit: BoxFit.cover
                              )),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("price")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 363,
              //color: Colors.amber,
              child: Column(
                children: [
                  Container(
                    height: 124,
                    //color: Colors.red,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 60,
                          decoration: BoxDecoration(
                              //color: Color.fromRGBO(0, 81, 50, 0.37),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/ubar.png'),
                                //fit: BoxFit.cover
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 130,
                          //color: Color.fromRGBO(92, 186, 150, 0.369),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "sedan",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "sedan rides",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 70,
                          //color: Color.fromRGBO(92, 186, 150, 0.369),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "20 min",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 70,
                          //color: Color.fromRGBO(92, 186, 150, 0.369),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 124,
                    //color: Colors.red,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 60,
                          decoration: BoxDecoration(
                              //color: Color.fromRGBO(0, 81, 50, 0.37),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/ola.png'),
                                //fit: BoxFit.cover
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 130,
                          // color: Color.fromRGBO(92, 186, 150, 0.369),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "sedan",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "sedan rides",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 70,
                          //color: Color.fromRGBO(92, 186, 150, 0.369),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "20 min",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 70,
                          //color: Color.fromRGBO(92, 186, 150, 0.369),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 124,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 60,
                          decoration: BoxDecoration(
                              //color: Color.fromRGBO(0, 81, 50, 0.37),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/repido.png'),
                                //fit: BoxFit.cover
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 130,
                          //color: Color.fromRGBO(92, 186, 150, 0.369),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "sedan",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "sedan rides",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 70,
                          //color: Color.fromRGBO(92, 186, 150, 0.369),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "20 min",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 600,
                          width: 70,
                          //color: Color.fromRGBO(92, 186, 150, 0.369),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
