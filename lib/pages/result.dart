import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lottie/lottie.dart';

class TespitGecmisiSayfasi extends StatefulWidget {
  @override
  _TespitGecmisiSayfasiState createState() => _TespitGecmisiSayfasiState();
}

class _TespitGecmisiSayfasiState extends State<TespitGecmisiSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tespit Geçmişi'),
      ),
      body: Column(
        children: [
          Expanded(//Expanded, diğer widget'ların kullanılmayan boş alanı kaplamasını sağlar.
            child: StreamBuilder<QuerySnapshot>(
            //StreamBuilder kullanarak Firestore'dan gelen verileri dinleyip anlık güncellemeleri sağlar.
            stream: FirebaseFirestore.instance.collection('tespitGecmisi').snapshots(),
              //snapshots() metodu, belirtilen koleksiyondaki tüm belgeleri temsil eden bir akış döndürür.
              // Bu akış, koleksiyondaki belgelerde herhangi bir değişiklik olduğunda otomatik olarak güncellenir ve sayfa yeniden çizilir.
            builder: (context, snapshot) {//builder özelliği, akıştan gelen verilere göre sayfanın içeriğini oluşturur.
              if (snapshot.hasData) {//snapshot nesnesi, akıştaki anlık durumu temsil eder
                List<DocumentSnapshot> tespitler = snapshot.data!.docs;//Firestore koleksiyonundaki tüm belgeleri alarak bunları bir List<DocumentSnapshot> içine yerleştirir
                return ListView.builder(
                  itemCount: tespitler.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> tespitVerisi = tespitler[index].data() as Map<String, dynamic>;
                      //Firestore'dan alınan bir belgenin (tespitin) verilerini temsil eden Map türünde bir değişkene atanıyor.
                      // Bu, belgenin içeriğini temsil eden bir harita yapısını elde ediyor.
                    String tarih = (tespitVerisi['tarih'] as Timestamp).toDate().toString();
                     //tespitVerisi haritasındaki "tarih" alanı, Firestore'da bir Timestamp olarak saklanmış olabilir.
                     // Bu satır, "tarih" alanını Timestamp türünden bir nesneden DateTime türüne çevirip ardından
                    String hastalikAdi = tespitVerisi['hastalikAdi'];
                    double basari = (tespitVerisi['basari'] as num).toDouble();//yanlış olan eski hali double basari = tespitVerisi['basari']as double;
                      //Bu alandaki veri, Firestore'da muhtemelen bir num veya double türünde saklanmıştır.
                      // Bu satırda bu değeri alıp toDouble() yöntemini kullanarak double türüne çeviriyor.

                    return ListTile(
                      title: Text('Tarih: $tarih'),
                      subtitle: Text('Hastalık Adı: $hastalikAdi\nBaşarı: $basari%'),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Veriler alınırken bir hata oluştu.'));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Lottie.network(
              'https://lottie.host/5c399e7d-f5f8-4d82-9747-d9e826007e64/9aK1Gc9mqk.json', // Animasyon URL'si
              width: 150,
              height:150,
            ),
            /*Lottie.asset(
              'assets/lottie_assets/animation.json', // Animasyon dosyasının yolu
              width: 100,
              height: 100,
              repeat: true,
            ),*/
          ),
        ],
      ),
    );
  }
}
