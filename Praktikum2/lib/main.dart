import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 158, 158, 158),
      ),
      home: const IlhamApp(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
class IlhamApp extends StatefulWidget {
  const IlhamApp({super.key, required this.title});
  final String title;
  @override
  State<IlhamApp> createState() => _IlhamAppState();
}
class _IlhamAppState extends State<IlhamApp> {
  double _counter = 12;
  bool isVisible = true;
  String isName = 'Who Is Estarossa?';
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _isVisible(){
    setState(() {
      isVisible = !isVisible;
      if(isVisible){
        isName = 'Who is Estarossa?'; 
      }else{
        isName = 'Estarossa Is Ilham Safaat';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 59, 141, 80),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            Icon(Icons.nightlight_round),
            Text('Estarossa'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const CircleAvatar(radius: 70,
             backgroundImage: AssetImage('img/img2.png'),
             backgroundColor: Colors.blue,
            ),
            const SizedBox(
               height: 20, 
            ),
            Text(
              'Click Tombol + untuk menambah Ukuran Font\n'
              'Ukuran Font Saat ini $_counter',
              style: TextStyle(fontSize:_counter,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(isName,style: const TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Roboto'),),
              ],
            ),
          TextButton(
              onPressed: _isVisible,
              // ignore: sort_child_properties_last
              child: const Icon(Icons.visibility_off),
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255)
              ),
              ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        // ignore: sort_child_properties_last
        child: const Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 59, 141, 80),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}