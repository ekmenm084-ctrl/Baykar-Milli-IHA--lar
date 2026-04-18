import 'package:flutter/material.dart';

class Ucak {
  final String isim;
  final String resim;
  final String ozellik;
  final String aciklama; // Detay sayfası için eklendi
  Ucak({required this.isim, required this.resim, required this.ozellik, required this.aciklama});
}

List<Ucak> ucaklar = [
  Ucak(isim: "KIZIL ELMA", ozellik: "Manevra Kabiliyeti", resim: "KIZILELMA.png", aciklama:"Bayraktar KIZILELMA’nın öne çıkan kabiliyetleri arasında, üstün manevra yeteneği sayesinde sağlanan yüksek seviyeli hava-hava muharebe performansı yer almaktadır. Düşük radar kesit alanı, platformun görünürlüğünü asgari düzeye indirerek hava savunma ve taarruz görevlerinde etkin bir kuvvet çarpanı olmasını mümkün kılmaktadır."),
  Ucak(isim: "AKINCI", ozellik: "Gelişmiş Yapay Zeka", resim: "AKINCI.png", aciklama: "İstihbarat toplama kabiliyetlerinin ötesinde Bayraktar AKINCI, hassas kara ve hava hedeflerine yönelik taarruz icra edebilen güçlü bir silahlı platformdur. Çok yönlü görev seti, deniz güvenliği alanına da uzanmakta; denizaltı savunma harbi, su üstü harbi ve kıyı devriyesi gibi görevlerde etkin ve bütüncül çözümler sağlamaktadır"),
  Ucak(isim: "TB3", ozellik: "Deniz Platformları için Uygun", resim: "TB3.png", aciklama: "Bayraktar TB3 Silahlı İnsansız Hava Aracı (SİHA), Baykar tarafından geliştirilen millî ve özgün bir silahlı insansız hava aracı sistemidir. Kısa pistli uçak gemilerinden otonom olarak kalkış ve iniş yapabilme kabiliyetiyle deniz konuşlu harekâtlar için özel olarak tasarlanmıştır"),
  Ucak(isim: "TB2", ozellik: "Dünyanın en aktif kullanılan İHA 'sı", resim: "TB2.png", aciklama: "Bayraktar TB2 Silahlı İnsansız Hava Aracı (SİHA), muharebe sahasında etkinliği kanıtlanmış, orta irtifa–uzun havada kalış sınıfında bir platformdur. İstihbarat, keşif ve gözetleme görevleri için geliştirilen TB2; üç yedekli otopilot sistemi ve gelişmiş sensör füzyon yapısı sayesinde yüksek görev emniyeti ve operasyonel süreklilik sağlamaktadır."),
  Ucak(isim: "KALKANDİHA", ozellik: "Kızılötesi Kamera", resim: "KalkanDiha.png", aciklama: "Bayraktar KALKAN Dikey İniş Kalkışlı İnsansız Hava Aracı (DİHA), istihbarat, keşif ve gözetleme görevleri için özel olarak tasarlanmış, çok yönlü ve esnek bir sistemdir. Tam otonom kalkış, seyir ve iniş kabiliyetlerinin yanı sıra yarı otonom uçuş yeteneklerine de sahip olan KALKAN, farklı operasyonel ihtiyaçlara etkin şekilde cevap verebilmektedir."),
  Ucak(isim: "KEMANKEŞ1", ozellik: "Seyir Füzesi", resim: "Kemankeş1Füze.png", aciklama: "Bayraktar KEMANKEŞ 1 Yapay Zekâ Tabanlı Mini Seyir Füzesi, stratejik hedefleri hassasiyetle imha etmek üzere Baykar tarafından milli ve özgün olarak geliştirilmiştir. Sistem adını zorlu koşullarda eşsiz isabet yetenekleriyle tanınan Türk okçularından ilham alır."),
  Ucak(isim: "KEMANKEŞ2", ozellik: "Gelişmiş Seyir Füzesi", resim: "Kemankeş2Füze.png", aciklama: "Bayraktar KEMANKEŞ 2 yapay zekâ destekli bir otopilot sistemiyle otonom olarak uçuş yapabilir. Jet motoruyla itki üreten bu Mini Seyir Füzesi, düşman hatlarının derinliklerinde kritik hedefleri etkisiz hale getirme kabiliyetine sahiptir."),
  Ucak(isim: "MİNİDİHA", ozellik: "Zorlu Hava Koşulları", resim: "MiniDiha.png", aciklama: "Bayraktar MİNİ, tamamen özgün ve milli olarak geliştirilmiş elektronik, yazılım ve yapısal bileşenleriyle Türkiye’nin ilk mini robot insansız hava aracı sistemidir. 2007 yılında Türk Silahlı Kuvvetleri envanterine girerek Türkiye’nin ilk milli İHA’sı unvanını kazanan Bayraktar MİNİ, alt sistemleri de dahil olmak üzere tamamen Baykar tarafından geliştirilmiştir. Bu başarıyı takiben, 2012 yılında Türkiye’nin ihraç edilen ilk milli İHA'sı olmuştur."),
];

class UcakUygulamasi extends StatelessWidget {
  const UcakUygulamasi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 139, 138, 138),
      appBar: AppBar(
        title: const Text("Baykar İnsansız Hava Araçları"),
        backgroundColor: Colors.blueAccent,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const UcakGalerisiSayfasi()));
            },
            child: const Text("GALERİ", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const UcakHakkinda()));
            },
            child: const Text("ŞİRKET HAKKINDA", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: ucaklar.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/${ucaklar[index].resim}"),
              ),
              title: Text(ucaklar[index].isim, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(ucaklar[index].ozellik),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfasi(secilenUcak: ucaklar[index])));
              },
            ),
          );
        },
      ),
    );
  }
}

class DetaySayfasi extends StatelessWidget {
  final Ucak secilenUcak;



  
  const DetaySayfasi({super.key, required this.secilenUcak});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(secilenUcak.isim)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/${secilenUcak.resim}", width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(secilenUcak.isim, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                  const SizedBox(height: 10),
                  Text("Temel Özellik: ${secilenUcak.ozellik}", style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
                  const Divider(height: 30),
                  const Text("Detaylı Bilgi:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(secilenUcak.aciklama, style: const TextStyle(fontSize: 16, height: 1.5)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UcakHakkinda extends StatelessWidget {
  const UcakHakkinda({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Hakkında",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
        backgroundColor: Colors.blueAccent,
        ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "Baykar, Türkiye'nin milli ve özgün insansız hava araçlarını (SİHA/İHA) geliştiren, savunma ve havacılık sektöründe dünya çapında öncü, %93 yerlilik oranına ulaşmış özel bir teknoloji firmasıdır. Özdemir Bayraktar tarafından 1984'te kurulan şirket, günümüzde Haluk Bayraktar ve Selçuk Bayraktar yönetiminde, İHA teknolojilerinde %100 özkaynakla Ar-Ge faaliyetleri yürütmektedir",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            
          ),
        ),
      ),
    );
  }
}

class UcakGalerisiSayfasi extends StatelessWidget {
  const UcakGalerisiSayfasi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text("Görsel TANITIM Galeri"),
      backgroundColor: Colors.blueAccent

      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.90,
        ),
        itemCount: ucaklar.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset("assets/${ucaklar[index].resim}", fit: BoxFit.contain),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(ucaklar[index].isim, style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: UcakUygulamasi(),
      debugShowCheckedModeBanner: false,
    ),
  );
}