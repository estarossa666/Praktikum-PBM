import 'package:flutter/material.dart';
import 'package:project_baru/list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String gambar= "assets/img/logo.png";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(20, 20, 20, 1.0),
        elevation: 0,
      ),
    body: SingleChildScrollView(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/img/logo2.png'), 
                )
              ),
            ),
          Container(
            padding: const EdgeInsets.only(top:50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const Text('Please verify your 21+ or older to enter.\n'
                'Sorry, you must be of legal age to enter this application',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1,
                  fontFamily: ('Poppins'),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context) => const ListPage(),));},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(212, 155, 53, 1.0)
                    )
                  ), 
                    child: const Text('I am 21+ or older'),
                ),
                const SizedBox(
                  width: 40,
                ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(212, 155, 53, 1.0))
                      )
                    , 
                    child: const Text('I am under 21'),)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Warning Adult Content!',
                style: TextStyle(fontFamily: ('Bebas'),fontSize: 25, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ) 
    ,)  
    );
  }
}