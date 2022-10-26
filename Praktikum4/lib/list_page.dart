import 'package:flutter/material.dart';
import 'package:project_baru/detail_page.dart';
import 'package:project_baru/gunshop_model.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

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
      body: SingleChildScrollView(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: gunshopList.length,
          itemBuilder:(context, index) {
            final GunshopModel gunshop = gunshopList[index];
            return Card(
              child: ListTile(
                title:
                  Text(gunshop.title,
                  style: TextStyle(fontFamily: ('Bebas'), fontSize: 20, ),
                  ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(gambar: gunshop.gambar,title: gunshop.title,deskripsi: gunshop.deskripsi),));
              },
              tileColor: Color.fromRGBO(212, 155, 53, 1.0),
              leading: InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(gambar: gunshop.gambar,title: gunshop.title,deskripsi: gunshop.deskripsi),));},
                child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage(gunshop.gambar))
                  ),
                 ),
               )
              ),
            );
          },
        ) ,
      ),
    );
  }
}