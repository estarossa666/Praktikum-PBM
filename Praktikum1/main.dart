void main(List<String> args) {
  print('Nomor 1');
  String a ='Selamat Datang Ilham Safaat di Microsoft dengan kode';
  double kode =2010631170081;
  var pesan ='Selamat Bekerja,untuk mengambil id card silahkan hubungi supervisor anda\n\n';
  print(a);
  print(kode);
  print(pesan);

  print('Nomor 2');
String piramid ='*';
for (int i = 1; i < 4; i++){
  for(int j = i; j < 4; j++){
    print(piramid);
    piramid = piramid + '*';
  }
}

  print('\n\nNomor 3');
  List<String> menupesanan = ['Nasi Goreng','Nasi Rames','Es Teh Manis'];
  Map<String, String> harga ={
    menupesanan[0] : '13.000',
    menupesanan[1] : '10.000',
    menupesanan[2] : '4.000',
    
  };
  Set<String> listmakanan = {'Nasi Goreng','Nasi Rames', 'Es Teh Manis'};
  print(menupesanan[0]);
  print(harga['Nasi Goreng']);
  print(listmakanan);

  print('\n\nNomor 4');
  
    var nama =['\nIlham', 'Safaat'];
    Map<String, double> ipk ={
    nama[0] : 3.00,
    nama[1] : 3.78,
   };
   var num = 3.50; 
   nama.forEach((element) {
    if (ipk[element]! > num) { 
      print(element);
      print('Cumlaude\n'); 
   } else { 
      print(element);
      print('Tidak Cumlaude\n'); 
   } 
    });
   
}

  

