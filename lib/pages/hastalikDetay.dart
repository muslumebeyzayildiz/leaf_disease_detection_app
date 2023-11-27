import 'package:flutter/material.dart';

class HastalikDetaySayfasi extends StatelessWidget {
  final String hastalikAdi;

  HastalikDetaySayfasi({required this.hastalikAdi});

  // Hastalık adlarına göre açıklama ve çözüm önerileri haritası
  Map<String, String> hastaliklar = {
    "0 powdery_mildew": "KÜLLEME HASTALIĞI (POWDERY MİLDEW) NEDİR? \n Külleme, çok çeşitli bitkileri etkileyen bir mantar hastalığıdır. Birçok farklı külleme türü vardır ve her tür bir dizi farklı bitkiye saldırır.\n\nLeveillula taurica mantar patojeni bitkiyi enfekte ettiğinde domates yapraklarının üzerinde mantar sporlarından oluşan bir küf tabakası oluşur. Bu sporlar daha sonra rüzgarla diğer bitkilere taşınır.\n\nDomateste Külleme hastalığı, bitkinizin büyümesini yavaşlatabilir ve enfeksiyon yeterince şiddetliyse meyve verimini ve kalitesini düşürür.\n\n\n"
        "KÜLLEME HASTALIĞIYLA DOĞAL MÜCADELE YÖNTEMLERİ\nTüm zararlılar ve hastalıklarda olduğu gibi, külleme sporlarını kontrol etmenin en iyi yolu proaktif önlemedir.\n\nKüllemeyi önlemek için ekim sahalarında (tarla, sera) küllemeye dayanıklı bitkiler seçin. Özellikle kabakgillerden kavun, salatalık, kabak gibi bitkiler küfe karşı dayanıklıdır.\n\nKülleme gölge alanlarda geliştiği için bitkilerinizi gün ışığını daha çok alan yerlere dikin.\n\nMantar sporlarının gelişiminde önemli bir rolü olan bağıl nemi azaltmak için bitkileri budayın. Böylece hava sirkülasyonu daha çok olacağından bağıl nem oluşmaz.",

    "1 Bacterial_spot": "BAKTERİYEL LEKE (BACTERIAL SPOT) NEDİR?\n Bakteri bitkilerin tüm toprak üstü kısımlarını etkilemektedir. Yapraklar ve gövde üzerindeki lekeler genel olarak kahverengi ve daire şeklindedir.Lekeler yağmur yağdığında veya sabah çiği olunca ıslak şeklinde görülür.Lezyonlar nadiren 3 mm çapından büyük gelişmektedir. Küçük yapraklardaki lekeler diğer hastalıklarla karıştırılabilir. Bakteriyel leke hastalığında lezyonlar alternaria solani, corynespora cassiicola olduğu gibi merkezi bölgeler bulunmamakta genel olarak daha koyu renktedir. Koşullar hastalık gelişim için uygun olduğunda yapraklar ve yaprak saplarındaki lekeler birleşerek uzun koyu çizgiler oluşturur.Küçük yapraklarda genel bir sararma görülmektedir \n\n"
      "Lezyonların birleşmesiyle yeşil aksamlarda solma ve kuruma görülür.Genellikle kurumuş yapraklar bitkilerin üzerinde kalır ve kavrulmuş bir görüntü oluşur.Meyvelerde hafif ve az miktarda kabarcıklar görülür.Lekeler büyüklük olarak artarsa kahverengi yara kabuğuna benzer görünüm oluşur.Bununla birlikte lezyonlar kenarlarda artıp ortalarda azalma gösterebilir.Gelişen lezyonlar soluk haleler oluşturur ve sonrada kaybolur\n\n."
        "BAKTERİYEL LEKE HASTALIĞIYLA DOĞAL MÜCADELE YÖNTEMLERİ\nHastalıksız ve enfeksiyon taşımayan tohumlar ve fideler kullanarak hastalığın bitkilere girişini önlemek en iyi adımlardan biridir.\n\nBitkiler arasındaki yeterli mesafe bırakarak ve bitkilerin etrafını gerektiğinde budayarak iyi havalandırma sağlayabilirsiniz. Bu, yaprak yüzeylerinin hızla kurumasına ve bakterilerin yayılmasının önlenmesine yardımcı olabilir.\n\nBitkilerin uygun beslenmesi, genel bitki sağlığını artırarak hastalıklara karşı direnci artırabilir. Dengeli gübreleme yaparak bitkileri güçlendirebilirsiniz.",

    "2 Early_blight": "ERKEN SOLGUNLUK (EARLY BLIGHT) NEDİR?\n Erken solgunluk hastalığı genellikle ılıman ve nemli hava koşullarında yaygın olarak görülür. Sıcak ve nemli hava, hastalığın gelişimi için uygun bir ortam sağlar. Hastalık, bitkilerin yapraklarındaki lekelerle başlar ve bu lekeler zamanla büyüyerek kahverengi ila siyah renkte halkalar oluşturabilir. Yaprakların kenarlarından başlayarak orta kısımlarına doğru yayılan lekeler, yaprakların solmasına, kurumasına ve dökülmesine neden olabilir. Ayrıca meyvelerde de kahverengi, çürümüş lekeler oluşabilir.\n\n"
        "ERKEN SOLGUNLUK HASTALIĞIYLA DOĞAL MÜCADELE YÖNTEMLERİ\n Hastalıklı bitki artıklarını toplamak ve imha etmek, hastalığın yayılma kaynağını ortadan kaldırabilir.\n\nYaprakların doğrudan sulama suyuyla temasını en aza indiren damlama sulama gibi sulama yöntemleri kullanmak, hastalığın yayılmasını azaltabilir.",

    "3 healthy": "Bu yaprak sağlıklıdır.",

    "4 Late_blight": "GEÇ SOLGUNLUK HASTALIĞI(LATE BLIGHT) NEDİR?\nGeç solgunluk hastalığı (Late Blight), özellikle patates ve domates bitkilerini etkileyen ciddi ve bulaşıcı bir fungal hastalıktır. Phytophthora infestans adlı su mantarının neden olduğu bir enfeksiyon sonucu meydana gelir. Bu hastalık, bitki yetiştiriciliği için büyük bir tehdit oluşturabilir çünkü hızla yayılabilir ve bitki hasadını büyük ölçüde etkileyebilir.\n\n"
        "GEÇ SOLGUNLUK HASTALIĞIYLA DOĞAL MÜCADELE YÖNTEMLERİ\nHastalığa karşı etkili olan biyolojik kontrol ajanları, hastalığın yayılmasını engellemek veya sınırlamak için kullanılabilir. Örneğin, bazı yararlı mikroorganizmalar veya böcekler, hastalığın etmenini kontrol altında tutabilir.\n\nBacillus subtilis gibi yararlı bakteriler içeren preparatlar, hastalığa karşı bitki direncini artırabilir ve enfeksiyon riskini azaltabilir.\n\nOlgunlaşan meyvelerin ve bitkilerin zamanında toplanması, enfekte olmuş alanların kontrolünü sağlar. Aynı zamanda hastalığın yayılmasını da sınırlayabilir.",
  };

  @override
  Widget build(BuildContext context) {
    String aciklama = hastaliklar[hastalikAdi] ?? "Bilgi Bulunamadı";
    //eğer hastalikAdi anahtarı bulunmazsa yerine otomatik olarak "Bilgi Bulunamadı" metnini atamak içindir.

    return Scaffold(
      appBar: AppBar(
        title: Text("Hastalık Detayları"),
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/tomato.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tespit Edilen Hastalık: $hastalikAdi",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Açıklama ve Çözüm Önerileri",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  aciklama,
                  style: TextStyle(fontSize: 16),
                ),
              ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}
