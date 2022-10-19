// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:project_baru/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _currentIndex = 0;
      // ignore: non_constant_identifier_names
      String Halaman1 = 'Home';
    
      void _changeSelectedNavBar(int index) {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => const Profile())));
      }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Plant Store"),
      titleTextStyle:TextStyle(
        color: Colors.green.shade900,
        fontFamily:('Poppins'),
        fontSize: 15,
        fontWeight: FontWeight.bold
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: const CircleAvatar(
          backgroundImage: AssetImage("assets/img/img2.png"),
          backgroundColor: Colors.blue,
          ),
        ),
       actions:<Widget> [
        IconButton(icon:const Icon(Icons.search),
        onPressed: (){},
        color:Colors.green.shade900,
        hoverColor: Colors.green.shade900
        ),
        IconButton(icon:const Icon(Icons.shopping_cart),
        onPressed: (){},
        color:Colors.green.shade900 ,),
       ],
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Container(
              padding: const EdgeInsets.only(left:15.0,top:20.0 ),
              child: const Text(
                'Let`s find your\n' 
                'plants!', 
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: ('FontPoppins'),
                  fontSize: 33,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 28, 95, 32)
                  ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width:  180,
                  margin: const EdgeInsets.only(left:15.0,top: 10.0,right: 15.0),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10.0),
                      color: Colors.green.shade900,
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/img/plant1.png')
                        ),
                    ),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Bunga Janda Bolong\n"
                      "IDR 100.5",
                      textAlign: TextAlign.start ,
                      style: TextStyle(fontFamily:('Poppins'), fontSize: 11, fontWeight: FontWeight.w600),
                      )
                  ]),
                ),
                Container(
                  height: 200,
                  width:  180,
                  margin: const EdgeInsets.only(top: 10.0,),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10.0),
                      color: Colors.green.shade900,
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/img/plant2.png')
                    )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Lidah Playboy\n"
                      "IDR 5.50",
                      textAlign: TextAlign.start ,
                      style: TextStyle(fontFamily:('Poppins'), fontSize: 11, fontWeight: FontWeight.w600),
                      )
                  ]),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                      height: 200,
                      width:  180,
                      margin: const EdgeInsets.only(left:15.0,top: 10.0,right: 15.0),
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0),
                          color: Colors.green.shade900,
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/img/plant3.png')
                            ),
                        ),
                        child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Tanaman Floria\n"
                          "IDR 20.5",
                          textAlign: TextAlign.start ,
                          style: TextStyle(fontFamily:('Poppins'), fontSize: 11, fontWeight: FontWeight.w600),
                          )
                      ]),
                    ),
                    Container(
                  height: 200,
                  width:  180,
                  margin: const EdgeInsets.only(top: 10.0,),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10.0),
                      color: Colors.green.shade900,
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/img/plant4.png')
                    )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Kembang Pisang\n"
                      "IDR 30.5",
                      textAlign: TextAlign.start ,
                      style: TextStyle(fontFamily:('Poppins'), fontSize: 11, fontWeight: FontWeight.w600),
                      )
                  ]),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                      height: 200,
                      width:  180,
                      margin: const EdgeInsets.only(left:15.0,top: 10.0,right: 15.0),
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0),
                          color: Colors.green.shade900,
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/img/plant5.png')
                            ),
                        ),
                        child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Kembang Jatiguna\n"
                          "IDR 20.5",
                          textAlign: TextAlign.start ,
                          style: TextStyle(fontFamily:('Poppins'), fontSize: 11, fontWeight: FontWeight.w600),
                          )
                      ]),
                    ),
                    Container(
                  height: 200,
                  width:  180,
                  margin: const EdgeInsets.only(top: 10.0,),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10.0),
                      color: Colors.green.shade900,
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/img/plant6.png')
                    )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Kembang Gloxinia\n"
                      "IDR 45.5",
                      textAlign: TextAlign.start ,
                      style: TextStyle(fontFamily:('Poppins'), fontSize: 11, fontWeight: FontWeight.w600),
                      )
                  ]),
                ),
              ],
            ),
          ], 
         ),
      ),
      bottomNavigationBar: BottomNavigationBar(
    
            //membuat item navigasi
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account'
              ),
            ],
    
            //currentindex mengikuti baris item bottom navigasi yang diklik
            currentIndex: _currentIndex,
    
            selectedItemColor: Colors.green.shade900,
    
            //metode yang dijalankan saat ditap
            onTap: _changeSelectedNavBar,
    
            //agar bottom navigation tidak bergerak saat diklik
            type: BottomNavigationBarType.fixed,
          ),
    );
  }
}
