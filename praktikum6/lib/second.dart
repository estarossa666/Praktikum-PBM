import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/profile.jpg')
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: const [
              Text('Ilham Safaat',
              style: TextStyle(fontFamily:('Poppins'), fontSize: 20, fontWeight: FontWeight.w600,color: Color.fromRGBO(164, 24, 107, 1)),
              ),
              Text('Founder', style: TextStyle (fontFamily:('Poppins'), fontSize: 13, fontWeight: FontWeight.w500,color: Color.fromRGBO(164, 24, 107, 1)))
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 20,),
                child: const Text(
                  'Account Information:', 
                  style: 
                  TextStyle (
                    fontFamily:('Poppins'), 
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(164, 24, 107, 1)
                    )
               )
              ),
            ],
          ),
           Container(
              margin: const EdgeInsets.only(top: 25,),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.account_circle,),
                  Text('Privacy', style: TextStyle (fontFamily:('Poppins'), fontSize: 20, fontWeight: FontWeight.w500))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25,),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.settings,),
                  Text('Settings', style: TextStyle (fontFamily:('Poppins'), fontSize: 20, fontWeight: FontWeight.w500))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25,),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.logout,),
                  Text('Log Out', style: TextStyle (fontFamily:('Poppins'), fontSize: 20, fontWeight: FontWeight.w500))
                ],
              ),
            )      
        ],
      ),
    );
  }
}