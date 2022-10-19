import 'package:flutter/material.dart';
import 'package:project_baru/main.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    int currentIndex = 1;
      // ignore: non_constant_identifier_names
    
      // ignore: no_leading_underscores_for_local_identifiers
      void _changeSelectedNavBar(int index) {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => const MyApp())));
      }
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Plant Store"),
      titleTextStyle:TextStyle(
        color: Colors.green.shade900,
        fontFamily:('Poppins'),
        fontSize: 15,
        fontWeight: FontWeight.bold
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: ((context) => const MyApp())));
        }, 
        icon: const Icon(Icons.arrow_back),
        color: Colors.green.shade900
        ),
        elevation: 0,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 110),
            child: const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/img/img2.png'),
            ),
          ),
          Column(
            children: const [
              Text('Ilham Safaat',
              style: TextStyle(fontFamily:('Poppins'), fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text('Founder', style: TextStyle (fontFamily:('Poppins'), fontSize: 13, fontWeight: FontWeight.w500))
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
                    fontWeight: FontWeight.bold)
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
                color: const Color.fromARGB(109, 7, 240, 15)
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
                color: const Color.fromARGB(109, 7, 240, 15)
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
                color: const Color.fromARGB(109, 7, 240, 15)
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
      bottomNavigationBar: BottomNavigationBar(
    
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account'
              ),
            ],
    
            currentIndex: currentIndex,
    
            selectedItemColor: Colors.green.shade900,
    
            onTap: _changeSelectedNavBar,
    
            type: BottomNavigationBarType.fixed,
          ),
    );
  }
}
