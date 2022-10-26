import 'package:flutter/material.dart';
import 'package:project_baru/gunshop_model.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,required this.gambar,required this.title,required this.deskripsi});
  final String title;
  final String deskripsi;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Container(
          padding: const EdgeInsets.only(right: 120),
          child: Image.asset('assets/img/logo.png')
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.only(top: 20),
            elevation: 0,
            color: Color.fromRGBO(212, 155, 53, 1.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(gambar))
              ),
            ),
          ),
          Expanded(
            child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(212, 155, 53, 1.0),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(title,
                    style: TextStyle(fontFamily: ('Bebas'), fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    Text(deskripsi,
                    style: TextStyle(fontFamily: ('Poppins'), fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
                    )
                  ],
                ),
              ],
            ),
          ),
          ),
          ElevatedButton(
            onPressed: () {}, 
            child: const Text('PreOrder Now',
            style: TextStyle( fontSize: 15, color: Colors.black),
            ),
            style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(212, 155, 53, 1.0))
            )
         ),
         SizedBox(
          height: 20,
         )
        ],
      ),
    );
  }
}