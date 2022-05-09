import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  double _initial= 0.0;
  double _initial1=0.0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _stepIndicator(){
    String value=(_initial*4).toString()[0];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        LinearProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.lightGreen),
          backgroundColor: Colors.grey,
          minHeight: 10,
          value: _initial,
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Week $value of 4 (4 success days remaining)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.supervisor_account_rounded,
                      color: Colors.blue,
                    ),
                    Text(" 2",
                    style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: (){

              setState(() {
                _initial=_initial+0.25;
              });
            },
            child: Text("Duuit!"),
              color: Colors.blue,

            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
  Widget _stepIndicator1(){
    String value=(_initial1*4).toString()[0];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.lightGreen),
            backgroundColor: Colors.grey,
            minHeight: 10,
            value: _initial1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Week $value of 4 (4 success days remaining)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.supervisor_account_rounded,
                      color: Colors.blue,
                    ),
                    Text(" 2",
                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: (){

              setState(() {
                _initial1=_initial1+0.25;
              });
            },
              child: Text("Duuit!"),
              color: Colors.blue,

            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        title: Text("duiit!"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.blueAccent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      // child: Image.network(
                      //   'https://img.freepik.com/free-psd/3d-illustration-cartoon-character-young-backpacker-man-wearing-sombrero-travel-with-white-bag-standing-show-passport-with-smile_1150-52372.jpg?t=st=1648403209~exp=1648403809~hmac=ab995ae4c0284296d6e16218d2e45cfedccb16b39e9b3a49a5a170284a39e64f&w=826',
                      //   width: 100,
                      //   height: 100,
                      //   fit: BoxFit.cover,
                      // ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35,left: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("John Rosee",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Last Login : Today",
                          style: TextStyle(
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Members Since: Jan'21",
                          style: TextStyle(
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38),
                    child: Image.asset("assets/google.png",
                    height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Lorem ipsum dolor sit amet,",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("consectetur adipiscing elit. Nisi tellus",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                         // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("facilisis...",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: Text("Current Activity",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: Card(
                  shadowColor: Colors.indigo,
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.indigo.shade200,
                  child: Container(

                    height: 120,
                    width: 500,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Medidate",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text("Medidate 15 mins",
                              style: TextStyle(
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text("every day",
                            style: TextStyle(
                              fontSize: 15,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),


                        ],
                      ),
                    ),

                  ),
                ),
              ),
              _stepIndicator(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: Card(
                  shadowColor: Colors.cyan,
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.cyan.shade100,
                  child: Container(

                    height: 120,
                    width: 500,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Reading",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text("Read 15 pages",
                              style: TextStyle(
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text("every day",
                            style: TextStyle(
                              fontSize: 15,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),


                        ],
                      ),
                    ),

                  ),
                ),
              ),

              _stepIndicator1(),





            ],
          ),
        ),
      ),
    );
  }
}

// ClipRRect(
// borderRadius: BorderRadius.circular(30),
// child: Image.network(
// 'https://img.freepik.com/free-psd/3d-illustration-cartoon-character-young-backpacker-man-wearing-sombrero-travel-with-white-bag-standing-show-passport-with-smile_1150-52372.jpg?t=st=1648403209~exp=1648403809~hmac=ab995ae4c0284296d6e16218d2e45cfedccb16b39e9b3a49a5a170284a39e64f&w=826',
// width: 150,
// height: 150,
// fit: BoxFit.cover,
// ),
//
// ),
