import 'package:flutter/material.dart';
import 'package:praktikum6/second.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _booleanvalue = false;

  void _isBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _booleanvalue = !_booleanvalue;
      if(_booleanvalue == true){
        Navigator.push(context, MaterialPageRoute(builder:(context) => SecondPage(),));
      }
    });
    prefs.setBool('booleanvalue', _booleanvalue);
  }

  _getBool() async{
    final SharedPreferences prefs = await _preference;
    setState(() {
      _booleanvalue = prefs.getBool('booleanvalue') ?? _booleanvalue;
      if(_booleanvalue == true){
        Navigator.push(context, MaterialPageRoute(builder:(context) => SecondPage(),));
      }
    });
  }

  void initState(){
    super.initState();
    _getBool();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Center(
            child: Container(
              height: 50,
              width: 315,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 315,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: _isBool, 
            child: Text('Login'),
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(54, 41, 78, 1))),)
        ],
      ),
    );
  }
}