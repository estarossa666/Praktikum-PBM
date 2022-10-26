

class GunshopModel{
  final int id;
  final String title;
  final String deskripsi;
  final String gambar;
  GunshopModel({
    required this.id,
    required this.title,
    required this.deskripsi,
    required this.gambar,
  });
}

List<GunshopModel> gunshopList = [
  GunshopModel(
    id: 1, 
    title: 'AK-47', 
    deskripsi: 'AK-47 dirancang oleh Mikhail Kalashnikov,\n'
    'seorang letnan jendral besar rusia\n'
    'Rusia memenangkan perang 2 kali\n'
    'dengan senjata ini',
    gambar: "assets/img/ak-47.png"
    ),
  GunshopModel(
    id: 2, 
    title: 'MP-7', 
    deskripsi: 'Barang siapa yang membeli senjata ini,\n'
    'lalu ia pergi berjihad, maka dia akan\n'
    'mendapat pahala sebesar gunung hud',
    gambar: "assets/img/mp-7.png"
    ),
  GunshopModel(
    id: 3, 
    title: 'P-90', 
    deskripsi: 'Barang siapa yang membeli senjata ini,\n'
    'lalu ia pergi berjihad, maka dia akan\n'
    'mendapat pahala sebesar gunung hud',
    gambar: "assets/img/p-90.png"
    ),
  GunshopModel(
    id: 4, 
    title: 'M-16', 
    deskripsi: 'Barang siapa yang membeli senjata ini,\n'
    'lalu ia pergi berjihad, maka dia akan\n'
    'mendapat pahala sebesar gunung hud',
    gambar: "assets/img/m-16.png"
    ),
  GunshopModel(
    id: 5, 
    title: 'SS-2 Pindad', 
    deskripsi: 'Barang siapa yang membeli senjata ini,\n'
    'lalu ia pergi berjihad, maka dia akan\n'
    'mendapat pahala sebesar gunung hud',
    gambar: "assets/img/ss-2.png"
    ),
  GunshopModel(
    id: 6, 
    title: 'McMilan TAC-50', 
    deskripsi: 'Barang siapa yang membeli senjata ini,\n'
    'lalu ia pergi berjihad, maka dia akan\n'
    'mendapat pahala sebesar gunung hud',
    gambar: "assets/img/cheytac.png"
    ),
  GunshopModel(
    id: 7, 
    title: 'Night Hawk', 
    deskripsi: 'Barang siapa yang membeli senjata ini,\n'
    'lalu ia pergi berjihad, maka dia akan\n'
    'mendapat pahala sebesar gunung hud',
    gambar: "assets/img/night.png"
    ),
  GunshopModel(
    id: 8, 
    title: 'M-416', 
    deskripsi: 'Barang siapa yang membeli senjata ini,\n'
    'lalu ia pergi berjihad, maka dia akan\n'
    'mendapat pahala sebesar gunung hud',
    gambar: "assets/img/m416.png"
    ),
  GunshopModel(
    id: 9, 
    title: 'Colt Anaconda', 
    deskripsi: 'Barang siapa yang membeli senjata ini,\n'
    'lalu ia pergi berjihad, maka dia akan\n'
    'mendapat pahala sebesar gunung hud',
    gambar: "assets/img/colt.png"
    ),
  GunshopModel(
    id: 10, 
    title: 'Desert Eagle', 
    deskripsi: 'Barang siapa yang membeli senjata ini,\n'
    'lalu ia pergi berjihad, maka dia akan\n'
    'mendapat pahala sebesar gunung hud',
    gambar: "assets/img/deagle.png"
    ),
];